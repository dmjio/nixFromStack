{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}
module Main where

import           Cabal2nix                               hiding (main)
import           Control.Concurrent
import           Control.Concurrent.Async
import           Control.Exception
import           Control.Monad
import           Data.IORef
import           Data.List.Split
import           Data.Map                                (Map)
import qualified Data.Map                                as M
-- import qualified Data.Text.Lazy                          as T
import           Distribution.Nixpkgs.Haskell.Derivation
import           System.Environment
import           System.Exit
import           System.IO
import           System.Process
import           Text.Pretty.Simple

main :: IO ()
main = do
  n <- getNumCapabilities
  putStrLn $ "Capabilities: " ++ show n
  hSetBuffering stderr LineBuffering
  args <- getArgs
  rawDeps <- map (go . splitOn " ")
            <$> lines
            <$> readProcess "stack" [ "list-dependencies" ] []
  deps <- flip filterM rawDeps $ \(x,y) ->
    case y of
      "<unknown>" -> do
         hPutStrLn stderr $ "Couldn't find version for: " ++ x
         pure False
      _ -> pure True
  pct <- newIORef (0 :: Integer)
  ref <- newIORef mempty :: IO (IORef (Map String Derivation))
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
        result <- try $ cabal2nix' argsFormatted
        case result of
          Left (e :: SomeException) -> do
            pure $ Left (argsFormatted,  show e)
          Right d ->
            case d of
              Left _ ->
                pure $ Left (argsFormatted,  "Incorrect arguments to cabal2nix")
              Right d' -> do
                modifyIORef' ref (M.insert p d')
                pure $ Right ()
  hPutStrLn stderr $ "Processing... 100%"
  forM_ [ k | Left k <- errors ] $ \(k,m) ->
    hPutStrLn stderr $ "Error in: " ++ concat k ++ ", messsage: " ++ m
  dmap <- M.toList <$> readIORef ref
--  let str = T.unpack $ T.intercalate "\n" (map pShow dmap)
--  print $ "{ " ++ str ++ " }"
  forM_ dmap $ \(_, d) -> pPrint d
  unless (length errors == 0) exitFailure
    where
      go [x,y] = (x,y)
      go _ = error "impossible"

toCabal :: [Char] -> [Char] -> [Char]
toCabal p v = "cabal://" ++ p ++ "-" ++ v

