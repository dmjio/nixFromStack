# nixFromStack
Generate nix expressions from stack files.

Suitable for use with [`makePackageSet`](https://github.com/NixOS/nixpkgs/blob/master/pkgs/development/haskell-modules/lib.nix#L4)
as defined [here](https://github.com/NixOS/nixpkgs/blob/master/pkgs/development/haskell-modules/default.nix#L15)

The generated nix is in the same format as [`hackage-packages.nix`](https://github.com/NixOS/nixpkgs/blob/master/pkgs/development/haskell-modules/hackage-packages.nix)

Should also support GHCJS.

## Usage
```bash
[nix-shell:~/Desktop/nixFromStack]$ ./dist/build/nixFromStack/nixFromStack --no-check --no-haddock +RTS -N > stackage-packages.nix
Capabilities: 8
Processing... 0.0%
cabal://Cabal-1.24.2.0
cabal://QuickCheck-2.9.2
cabal://StateVar-1.1.0.4
cabal://abstract-deque-0.3
cabal://adjunctions-4.3
cabal://SHA-1.6.4.2
cabal://abstract-par-0.3.3
cabal://aeson-1.0.2.1
Processing... 9.30%
cabal://ansi-terminal-0.6.3.1
cabal://ansi-wl-pprint-0.6.7.3
cabal://array-0.5.1.1
cabal://attoparsec-0.13.1.0
cabal://async-2.1.1.1
cabal://base-4.9.1.0
cabal://base-compat-0.9.3
cabal://base-orphans-0.5.4
Processing... 18.6%
cabal://bifunctors-5.4.2
cabal://binary-0.8.3.0
cabal://bytestring-0.10.8.1
cabal://cabal-doctest-1.0.2
cabal://cereal-0.5.4.0
cabal://cabal2nix-2.0.4
cabal://comonad-5.0.1
cabal://conduit-1.2.11
Processing... 27.9%
cabal://containers-0.5.7.1
cabal://contravariant-1.4
cabal://deepseq-1.4.2.0
cabal://distribution-nixpkgs-1.0.0.1
cabal://distributive-0.5.2
cabal://directory-1.3.0.0
cabal://dlist-0.8.0.2
cabal://exceptions-0.8.3
Processing... 37.2%
cabal://fail-4.9.0.0
cabal://ghc-boot-th-8.0.2
cabal://free-4.12.4
cabal://ghc-boot-th-8.0.2
cabal://filepath-1.4.1.1
cabal://hashable-1.2.6.1
cabal://hackage-db-1.22
cabal://integer-gmp-1.0.0.1
Processing... 46.5%
cabal://integer-logarithms-1.0.1
cabal://kan-extensions-5.0.2
cabal://language-nix-2.1.0.1
cabal://monad-control-1.0.2.0
cabal://mmorph-1.0.9
cabal://lens-4.15.1
cabal://math-functions-0.2.1.0
cabal://monad-control-1.0.2.0
cabal://mmorph-1.0.9
Processing... 55.8%
cabal://monad-par-0.3.4.8
cabal://mwc-random-0.13.6.0
cabal://monad-par-extras-0.3.3
cabal://mtl-2.2.1
cabal://optparse-applicative-0.13.2.0
cabal://parallel-3.2.1.1
cabal://prelude-extras-0.4.0.3
cabal://parsec-3.1.11
Processing... 65.1%
cabal://pretty-1.1.3.3
cabal://pretty-simple-2.0.0.0
cabal://primitive-0.6.1.0
cabal://process-1.4.3.0
cabal://profunctors-5.2
cabal://random-1.1
cabal://reflection-2.1.2
cabal://resourcet-1.1.9
Processing... 74.4%
cabal://scientific-0.3.4.15
cabal://semigroupoids-5.1
cabal://template-haskell-2.11.1.0
cabal://stm-2.4.4.1
cabal://semigroups-0.18.2
cabal://split-0.2.3.2
cabal://tagged-0.8.5
cabal://tar-0.5.0.3
Processing... 83.7%
cabal://text-1.2.2.1
cabal://tf-random-0.5
cabal://time-1.6.0.1
cabal://time-locale-compat-0.1.1.3
cabal://transformers-0.5.2.0
cabal://transformers-base-0.4.4
cabal://transformers-compat-0.5.1.4
cabal://unix-2.7.2.1
Processing... 93.0%
cabal://unordered-containers-0.2.8.0
cabal://utf8-string-1.0.1.1
cabal://vector-th-unbox-0.2.1.6
cabal://yaml-0.8.23.1
cabal://vector-0.11.0.0
cabal://void-0.7.2
Processing... 100%
```

## Make nix package set
```nix
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
```

## Build
```
nix-build stack-build.nix
```

Generated nix [here](https://github.com/dmjio/nixFromStack/blob/master/stackage-packages.nix)
