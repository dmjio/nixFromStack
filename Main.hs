{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}
module Main where

import           Cabal2nix                               hiding (main)
import           Control.Concurrent
import           Control.Concurrent.Async
import           Control.Exception
import           Control.Lens
import           Control.Monad
import           Data.IORef
import           Data.List
import           Data.List.Split
import           Data.Map                                (Map)
import qualified Data.Map                                as M
import           Data.Maybe
import           Distribution.Nixpkgs.Haskell.Derivation
import           System.Directory
import           System.Environment
import           System.Exit
import           System.IO
import           System.Process
import           Text.PrettyPrint.HughesPJClass          ( Pretty(..) )

main :: IO ()
main = do
  n <- getNumCapabilities
  hPutStrLn stderr $ "Capabilities: " ++ show n
  hSetBuffering stderr LineBuffering
  args <- getArgs
  cabalFile <- listToMaybe . filter ("cabal" `isSuffixOf`) <$> getDirectoryContents "."
  cabalFileName <- case cabalFile of
    Nothing -> error "Couldn't find cabal file in cwd"
    Just cabal -> pure . head $ splitOn "." cabal
  rawDeps <- map (go . splitOn " ")
            <$> lines
            <$> readProcess "stack" [ "list-dependencies", "--no-system-ghc", "--skip-ghc-check" ] []
  deps <- flip filterM rawDeps $ \(x,y) -> do
    case y of
      "<unknown>" -> do
         hPutStrLn stderr $ "Couldn't find version for: " ++ x
         pure False
      _ | any (x ==) [cabalFileName, "rts"] -> pure False
        | otherwise -> pure True
  pct <- newIORef (0 :: Integer)
  ref <- newIORef mempty :: IO (IORef (Map String Derivation))
  let moreDeps =  ["hscolour", "jailbreak-cabal", "cabal-doctest", "happy", "stringbuilder"]
  forM_ moreDeps $ \(depName :: String) -> do
    let argsFormatted = args ++ [toCabal' depName]
    runCabal2Nix ref argsFormatted depName
  errors <- concat <$> do
    forM (chunksOf n deps) $ \deps' -> do
      currentDep <- readIORef pct
      let k :: Double = (fromIntegral currentDep / (fromIntegral (length deps))) * 100
      hPutStrLn stderr $ "Processing... " ++ take 4 (show k) ++ "%"
      modifyIORef' pct $ \c ->
        if c + fromIntegral n > fromIntegral (length deps)
          then fromIntegral (length deps)
          else c + fromIntegral n
      forConcurrently deps' $ \(p,v) -> do
        let argsFormatted = args ++ [toCabal p v]
        hPutStrLn stderr $ last argsFormatted
        runCabal2Nix ref argsFormatted p
  hPutStrLn stderr $ "Processing... 100%"
  forM_ [ k | Left k <- errors ] $ \(k,m) ->
    hPutStrLn stderr $ "Error in: " ++ concat k ++ ", messsage: " ++ m
  dmap <- M.toList <$> readIORef ref
  let xs = flip map dmap $ \(name, d) -> do
        show name ++ " = callPackage (" ++ show (pPrint d) ++ "){};\n"
      prelude = unlines [ "/* stackage-packages.nix is an auto-generated file -- DO NOT EDIT! */"
                        , "{ pkgs, stdenv, callPackage }:"
                        , "self: {"
                        ]
  putStrLn $ prelude ++ concat xs ++ "}"
  unless (length errors == 0) exitFailure
    where
      go [x,y] = (x,y)
      go _ = error "impossible"

toCabal :: [Char] -> [Char] -> [Char]
toCabal p v = "cabal://" ++ p ++ "-" ++ v

toCabal' :: [Char] -> [Char]
toCabal' p = "cabal://" ++ p

runCabal2Nix ::
  Ord k =>
  IORef (Map k Derivation)
  -> [String] -> k -> IO (Either ([String], String) ())
runCabal2Nix ref argsFormatted depName = do
  result <- try $ cabal2nix' argsFormatted
  case result of
    Left (e :: SomeException) -> do
      pure $ Left (argsFormatted,  show e)
    Right d ->
      case d of
        Left _ ->
          pure $ Left (argsFormatted,  "Incorrect arguments to cabal2nix")
        Right d' -> do
          let upd = d' & benchmarkDepends .~ mempty
                       & testDepends .~ mempty
          modifyIORef' ref (M.insert depName upd)
          pure $ Right ()
