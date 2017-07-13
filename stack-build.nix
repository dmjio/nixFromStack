{ pkgs ? import <nixpkgs> {} }:
let
  inherit (pkgs) stdenv;
  inherit (pkgs.haskell.packages) ghc802;
  cabal2nix = ghc802.callCabal2nix "cabal2nix" (pkgs.fetchFromGitHub {
    owner = "dmjio";
    repo = "cabal2nix";
    sha256 = "18yf8gmx9r9li17y3lknx0q7f5zmicmqfbs0srxxp6z801cwhmy1";
    rev = "c57fb93a6fbb6b26ad50de6b02d53c4d96ab3174";
  }) {};
  ghc802Stack = ghc802.override {
    initialPackages = import ./stackage-packages.nix;
   };
in
  ghc802Stack.callPackage ./nixFromStack.nix { inherit cabal2nix; }
