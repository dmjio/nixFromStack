# nixFromStack
Generate nix expressions from stack files (wip)

## Usage
```bash
./nixFromStack +RTS -N > stackage-packages.nix
```

## Result
```bash
➜  nixFromStack git:(master) ✗ ./result/bin/nixFromStack +RTS -N > stackage-packages.nix
Capabilities: 8
Processing... 0.0%
cabal://Cabal-1.24.2.0
cabal://QuickCheck-2.9.2
cabal://StateVar-1.1.0.4
cabal://SHA-1.6.4.2
cabal://abstract-par-0.3.3
cabal://adjunctions-4.3
cabal://abstract-deque-0.3
cabal://aeson-1.0.2.1
Processing... 9.09%
cabal://ansi-terminal-0.6.3.1
cabal://ansi-wl-pprint-0.6.7.3
cabal://async-2.1.1.1
cabal://base-orphans-0.5.4
cabal://base-4.9.1.0
cabal://base-compat-0.9.3
cabal://attoparsec-0.13.1.0
cabal://array-0.5.1.1
Processing... 18.1%
cabal://bifunctors-5.4.2
cabal://conduit-1.2.11
cabal://bytestring-0.10.8.1
cabal://binary-0.8.3.0
cabal://cabal-doctest-1.0.2
cabal://cabal2nix-2.0.4
cabal://cereal-0.5.4.0
cabal://comonad-5.0.1
Processing... 27.2%
cabal://containers-0.5.7.1
cabal://contravariant-1.4
cabal://deepseq-1.4.2.0
cabal://directory-1.3.0.0
cabal://distribution-nixpkgs-1.0.0.1
cabal://distributive-0.5.2
cabal://dlist-0.8.0.2
cabal://exceptions-0.8.3
Processing... 36.3%
cabal://fail-4.9.0.0
cabal://free-4.12.4
cabal://filepath-1.4.1.1
cabal://ghc-prim-0.5.0.0
cabal://hashable-1.2.6.1
cabal://ghc-boot-th-8.0.2
cabal://integer-gmp-1.0.0.1
cabal://hackage-db-1.22
Processing... 45.4%
cabal://integer-logarithms-1.0.1
cabal://kan-extensions-5.0.2
cabal://language-nix-2.1.0.1
cabal://lens-4.15.1
cabal://lifted-base-0.2.3.11
cabal://math-functions-0.2.1.0
cabal://mmorph-1.0.9
cabal://monad-control-1.0.2.0
Processing... 54.5%
cabal://monad-par-0.3.4.8
cabal://mtl-2.2.1
cabal://mwc-random-0.13.6.0
cabal://nixFromStack-0.1.0.0
cabal://optparse-applicative-0.13.2.0
cabal://parallel-3.2.1.1
cabal://parsec-3.1.11
cabal://monad-par-extras-0.3.3
*** no such package in the cabal database (did you run cabal update?). 
Processing... 63.6%
cabal://prelude-extras-0.4.0.3
cabal://pretty-1.1.3.3
cabal://pretty-simple-2.0.0.0
cabal://primitive-0.6.1.0
cabal://process-1.4.3.0
cabal://profunctors-5.2
cabal://random-1.1
cabal://reflection-2.1.2
Processing... 72.7%
cabal://resourcet-1.1.9
cabal://rts-1.0
cabal://semigroupoids-5.1
cabal://scientific-0.3.4.15
cabal://split-0.2.3.2
cabal://semigroups-0.18.2
cabal://stm-2.4.4.1
cabal://tagged-0.8.5
*** no such package in the cabal database (did you run cabal update?). 
Processing... 81.8%
cabal://template-haskell-2.11.1.0
cabal://text-1.2.2.1
cabal://tf-random-0.5
cabal://tar-0.5.0.3
cabal://time-locale-compat-0.1.1.3
cabal://time-1.6.0.1
cabal://transformers-0.5.2.0
cabal://transformers-base-0.4.4
Processing... 90.9%
cabal://transformers-compat-0.5.1.4
cabal://unix-2.7.2.1
cabal://unordered-containers-0.2.8.0
cabal://utf8-string-1.0.1.1
cabal://vector-0.11.0.0
cabal://vector-th-unbox-0.2.1.6
cabal://void-0.7.2
cabal://yaml-0.8.23.1
Processing... 100%
Error in: cabal://nixFromStack-0.1.0.0, messsage: ExitFailure 1
Error in: cabal://rts-1.0, messsage: ExitFailure 1
```

