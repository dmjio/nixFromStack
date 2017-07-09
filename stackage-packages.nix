/* stackage-packages.nix is an auto-generated file -- DO NOT EDIT! */
{ pkgs, stdenv, callPackage }:
self: {
"Cabal" = callPackage ({ mkDerivation, array, base, binary, bytestring, containers
, deepseq, directory, exceptions, filepath, old-time, pretty
, process, QuickCheck, regex-posix, stdenv, tagged, tasty
, tasty-hunit, tasty-quickcheck, time, transformers, unix
}:
mkDerivation {
  pname = "Cabal";
  version = "1.24.2.0";
  sha256 = "0h33v1716wkqh9wvq2wynvhwzkjjhg4aav0a1i3cmyq36n7fpl5p";
  revision = "1";
  editedCabalFile = "0jw809psa2ms9sy1mnirmbj9h7rs76wbmf24zgjqvhp4wq919z3m";
  libraryHaskellDepends = [
    array base binary bytestring containers deepseq directory filepath
    pretty process time unix
  ];
  testHaskellDepends = [
    base bytestring containers directory exceptions filepath old-time
    pretty process QuickCheck regex-posix tagged tasty tasty-hunit
    tasty-quickcheck transformers unix
  ];
  doCheck = false;
  homepage = "http://www.haskell.org/cabal/";
  description = "A framework for packaging Haskell software";
  license = stdenv.lib.licenses.bsd3;
});
"QuickCheck" = callPackage ({ mkDerivation, base, containers, random, stdenv, template-haskell
, test-framework, tf-random, transformers
}:
mkDerivation {
  pname = "QuickCheck";
  version = "2.9.2";
  sha256 = "119np67qvx8hyp9vkg4gr2wv3lj3j6ay2vl4hxspkg43ymb1cp0m";
  libraryHaskellDepends = [
    base containers random template-haskell tf-random transformers
  ];
  testHaskellDepends = [
    base containers template-haskell test-framework
  ];
  homepage = "https://github.com/nick8325/quickcheck";
  description = "Automatic testing of Haskell programs";
  license = stdenv.lib.licenses.bsd3;
});
"SHA" = callPackage ({ mkDerivation, array, base, binary, bytestring, QuickCheck, stdenv
, test-framework, test-framework-quickcheck2
}:
mkDerivation {
  pname = "SHA";
  version = "1.6.4.2";
  sha256 = "134ajm87fm4lpsw86m9q8apv20dw4bpk46raa389zr6bcdpifw64";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ array base binary bytestring ];
  testHaskellDepends = [
    array base binary bytestring QuickCheck test-framework
    test-framework-quickcheck2
  ];
  description = "Implementations of the SHA suite of message digest functions";
  license = stdenv.lib.licenses.bsd3;
});
"StateVar" = callPackage ({ mkDerivation, base, stdenv, stm, transformers }:
mkDerivation {
  pname = "StateVar";
  version = "1.1.0.4";
  sha256 = "1dzz9l0haswgag9x56q7n57kw18v7nhmzkjyr61nz9y9npn8vmks";
  libraryHaskellDepends = [ base stm transformers ];
  homepage = "https://github.com/haskell-opengl/StateVar";
  description = "State variables";
  license = stdenv.lib.licenses.bsd3;
});
"abstract-deque" = callPackage ({ mkDerivation, array, base, containers, random, stdenv, time }:
mkDerivation {
  pname = "abstract-deque";
  version = "0.3";
  sha256 = "18jwswjxwzc9bjiy4ds6hw2a74ki797jmfcifxd2ga4kh7ri1ah9";
  libraryHaskellDepends = [ array base containers random time ];
  homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
  description = "Abstract, parameterized interface to mutable Deques";
  license = stdenv.lib.licenses.bsd3;
});
"abstract-par" = callPackage ({ mkDerivation, base, deepseq, stdenv }:
mkDerivation {
  pname = "abstract-par";
  version = "0.3.3";
  sha256 = "0q6qsniw4wks2pw6wzncb1p1j3k6al5njnvm2v5n494hplwqg2i4";
  libraryHaskellDepends = [ base deepseq ];
  homepage = "https://github.com/simonmar/monad-par";
  description = "Type classes generalizing the functionality of the 'monad-par' library";
  license = stdenv.lib.licenses.bsd3;
});
"adjunctions" = callPackage ({ mkDerivation, array, base, comonad, containers, contravariant
, distributive, free, mtl, profunctors, semigroupoids, semigroups
, stdenv, tagged, transformers, transformers-compat, void
}:
mkDerivation {
  pname = "adjunctions";
  version = "4.3";
  sha256 = "1k1ykisf96i4g2zm47c45md7p42c4vsp9r73392pz1g8mx7s2j5r";
  revision = "1";
  editedCabalFile = "1079l9szyr7ybi9wcvv1vjsjfrqirkn9z3j7dann8vbk81a4z37q";
  libraryHaskellDepends = [
    array base comonad containers contravariant distributive free mtl
    profunctors semigroupoids semigroups tagged transformers
    transformers-compat void
  ];
  homepage = "http://github.com/ekmett/adjunctions/";
  description = "Adjunctions and representable functors";
  license = stdenv.lib.licenses.bsd3;
});
"aeson" = callPackage ({ mkDerivation, attoparsec, base, base-compat, base-orphans
, base16-bytestring, bytestring, containers, deepseq, dlist
, generic-deriving, ghc-prim, hashable, hashable-time, HUnit
, QuickCheck, quickcheck-instances, scientific, stdenv, tagged
, template-haskell, test-framework, test-framework-hunit
, test-framework-quickcheck2, text, time, time-locale-compat
, unordered-containers, vector
}:
mkDerivation {
  pname = "aeson";
  version = "1.0.2.1";
  sha256 = "0rlhr225vb6apxw1m0jpnjpbcwb2ij30n6r41qyhd5lr1ax6z9p0";
  revision = "1";
  editedCabalFile = "1wfplxb4bppx2bqxbwprl09w9h9bfwn4ak97g8nrdrm30xfqv16g";
  libraryHaskellDepends = [
    attoparsec base base-compat bytestring containers deepseq dlist
    ghc-prim hashable scientific tagged template-haskell text time
    time-locale-compat unordered-containers vector
  ];
  testHaskellDepends = [
    attoparsec base base-compat base-orphans base16-bytestring
    bytestring containers dlist generic-deriving ghc-prim hashable
    hashable-time HUnit QuickCheck quickcheck-instances scientific
    tagged template-haskell test-framework test-framework-hunit
    test-framework-quickcheck2 text time time-locale-compat
    unordered-containers vector
  ];
  homepage = "https://github.com/bos/aeson";
  description = "Fast JSON parsing and encoding";
  license = stdenv.lib.licenses.bsd3;
});
"ansi-terminal" = callPackage ({ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "ansi-terminal";
  version = "0.6.3.1";
  sha256 = "15c0c0vb66y3mr11kcvgjf4h0f7dqg7k1xq7zzq9fy11r7h9i3s5";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base ];
  homepage = "https://github.com/feuerbach/ansi-terminal";
  description = "Simple ANSI terminal support, with Windows compatibility";
  license = stdenv.lib.licenses.bsd3;
});
"ansi-wl-pprint" = callPackage ({ mkDerivation, ansi-terminal, base, stdenv }:
mkDerivation {
  pname = "ansi-wl-pprint";
  version = "0.6.7.3";
  sha256 = "025pyphsjf0dnbrmj5nscbi6gzyigwgp3ifxb3psn7kji6mfr29p";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ ansi-terminal base ];
  homepage = "http://github.com/ekmett/ansi-wl-pprint";
  description = "The Wadler/Leijen Pretty Printer for colored ANSI terminal output";
  license = stdenv.lib.licenses.bsd3;
});
"array" = callPackage ({ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "array";
  version = "0.5.1.1";
  sha256 = "08r2rq4blvc737mrg3xhlwiw13jmsz5dlf2fd0ghb9cdaxc6kjc9";
  libraryHaskellDepends = [ base ];
  description = "Mutable and immutable arrays";
  license = stdenv.lib.licenses.bsd3;
});
"async" = callPackage ({ mkDerivation, base, HUnit, stdenv, stm, test-framework
, test-framework-hunit
}:
mkDerivation {
  pname = "async";
  version = "2.1.1.1";
  sha256 = "1qj4fp1ynwg0l453gmm27vgkzb5k5m2hzdlg5rdqi9kf8rqy90yd";
  libraryHaskellDepends = [ base stm ];
  testHaskellDepends = [
    base HUnit test-framework test-framework-hunit
  ];
  homepage = "https://github.com/simonmar/async";
  description = "Run IO operations asynchronously and wait for their results";
  license = stdenv.lib.licenses.bsd3;
});
"attoparsec" = callPackage ({ mkDerivation, array, base, bytestring, case-insensitive
, containers, criterion, deepseq, directory, filepath, ghc-prim
, http-types, parsec, QuickCheck, quickcheck-unicode, scientific
, stdenv, tasty, tasty-quickcheck, text, transformers
, unordered-containers, vector
}:
mkDerivation {
  pname = "attoparsec";
  version = "0.13.1.0";
  sha256 = "0r1zrrkbqv8w4pb459fj5izd1h85p9nrsp3gyzj7qiayjpa79p2j";
  libraryHaskellDepends = [
    array base bytestring containers deepseq scientific text
    transformers
  ];
  testHaskellDepends = [
    array base bytestring deepseq QuickCheck quickcheck-unicode
    scientific tasty tasty-quickcheck text transformers vector
  ];
  benchmarkHaskellDepends = [
    array base bytestring case-insensitive containers criterion deepseq
    directory filepath ghc-prim http-types parsec scientific text
    transformers unordered-containers vector
  ];
  homepage = "https://github.com/bos/attoparsec";
  description = "Fast combinator parsing for bytestrings and text";
  license = stdenv.lib.licenses.bsd3;
});
"base" = callPackage ({ mkDerivation, ghc-prim, integer-gmp, rts, stdenv }:
mkDerivation {
  pname = "base";
  version = "4.9.1.0";
  sha256 = "0zpvf4yq52dkl9f30w6x4fv1lqcc175i57prhv56ky06by08anvs";
  libraryHaskellDepends = [ ghc-prim integer-gmp rts ];
  description = "Basic libraries";
  license = stdenv.lib.licenses.bsd3;
});
"base-compat" = callPackage ({ mkDerivation, base, hspec, QuickCheck, stdenv, unix }:
mkDerivation {
  pname = "base-compat";
  version = "0.9.3";
  sha256 = "0452l6zf6fjhy4kxqwv6i6hhg6yfx4wcg450k3axpyj30l7jnq3x";
  libraryHaskellDepends = [ base unix ];
  testHaskellDepends = [ base hspec QuickCheck ];
  description = "A compatibility layer for base";
  license = stdenv.lib.licenses.mit;
});
"base-orphans" = callPackage ({ mkDerivation, base, ghc-prim, hspec, QuickCheck, stdenv }:
mkDerivation {
  pname = "base-orphans";
  version = "0.5.4";
  sha256 = "0qv20n4yabg7sc3rs2dd46a53c7idnd88by7n3s36dkbc21m41q4";
  libraryHaskellDepends = [ base ghc-prim ];
  testHaskellDepends = [ base hspec QuickCheck ];
  homepage = "https://github.com/haskell-compat/base-orphans#readme";
  description = "Backwards-compatible orphan instances for base";
  license = stdenv.lib.licenses.mit;
});
"bifunctors" = callPackage ({ mkDerivation, base, base-orphans, comonad, containers, hspec
, QuickCheck, semigroups, stdenv, tagged, template-haskell
, transformers, transformers-compat
}:
mkDerivation {
  pname = "bifunctors";
  version = "5.4.2";
  sha256 = "13fwvw1102ik96pgi85i34kisz1h237vgw88ywsgifsah9kh4qiq";
  libraryHaskellDepends = [
    base base-orphans comonad containers semigroups tagged
    template-haskell transformers transformers-compat
  ];
  testHaskellDepends = [
    base hspec QuickCheck template-haskell transformers
    transformers-compat
  ];
  homepage = "http://github.com/ekmett/bifunctors/";
  description = "Bifunctors";
  license = stdenv.lib.licenses.bsd3;
});
"binary" = callPackage ({ mkDerivation, array, attoparsec, base, bytestring, Cabal, cereal
, containers, criterion, deepseq, directory, filepath, HUnit, mtl
, QuickCheck, random, stdenv, tar, test-framework
, test-framework-quickcheck2, unordered-containers, zlib
}:
mkDerivation {
  pname = "binary";
  version = "0.8.3.0";
  sha256 = "08d85qzna6zdkpgqwaw1d87biviv1b76zvk5qs3gg4kxwzfqa4r2";
  revision = "2";
  editedCabalFile = "0nz3v9pq1jy72j4drahjx055xhjj47yncanjsfgpphcmch9yl26i";
  libraryHaskellDepends = [ array base bytestring containers ];
  testHaskellDepends = [
    array base bytestring Cabal containers directory filepath HUnit
    QuickCheck random test-framework test-framework-quickcheck2
  ];
  benchmarkHaskellDepends = [
    array attoparsec base bytestring Cabal cereal containers criterion
    deepseq directory filepath mtl tar unordered-containers zlib
  ];
  homepage = "https://github.com/kolmodin/binary";
  description = "Binary serialisation for Haskell values using lazy ByteStrings";
  license = stdenv.lib.licenses.bsd3;
});
"bytestring" = callPackage ({ mkDerivation, base, byteorder, deepseq, directory, dlist
, ghc-prim, HUnit, integer-gmp, mtl, QuickCheck, random, stdenv
, test-framework, test-framework-hunit, test-framework-quickcheck2
}:
mkDerivation {
  pname = "bytestring";
  version = "0.10.8.1";
  sha256 = "16zwb1p83z7vc5wlhvknpy80b5a2jxc5awx67rk52qnp9idmyq9d";
  libraryHaskellDepends = [ base deepseq ghc-prim integer-gmp ];
  testHaskellDepends = [
    base byteorder deepseq directory dlist ghc-prim HUnit mtl
    QuickCheck random test-framework test-framework-hunit
    test-framework-quickcheck2
  ];
  homepage = "https://github.com/haskell/bytestring";
  description = "Fast, compact, strict and lazy byte strings with a list interface";
  license = stdenv.lib.licenses.bsd3;
});
"cabal-doctest" = callPackage ({ mkDerivation, base, Cabal, directory, filepath, stdenv }:
mkDerivation {
  pname = "cabal-doctest";
  version = "1.0.2";
  sha256 = "0h3wsjf2mg8kw1zvxc0f9nzchj5kzvza9z0arcyixkd9rkgqq6sa";
  libraryHaskellDepends = [ base Cabal directory filepath ];
  homepage = "https://github.com/phadej/cabal-doctest";
  description = "A Setup.hs helper for doctests running";
  license = stdenv.lib.licenses.bsd3;
});
"cabal2nix" = callPackage ({ mkDerivation, aeson, ansi-wl-pprint, base, bytestring, Cabal
, containers, deepseq, directory, distribution-nixpkgs, filepath
, hackage-db, language-nix, lens, monad-par, monad-par-extras, mtl
, optparse-applicative, pretty, process, SHA, split, stdenv, text
, time, transformers, utf8-string, yaml
}:
mkDerivation {
  pname = "cabal2nix";
  version = "2.0.4";
  sha256 = "1qvz3h544716dw2nbb412xpiih5kap47rkbkh23vm1r7z5ymj2xj";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson ansi-wl-pprint base bytestring Cabal containers deepseq
    directory distribution-nixpkgs filepath hackage-db language-nix
    lens optparse-applicative pretty process SHA split text
    transformers yaml
  ];
  executableHaskellDepends = [
    aeson ansi-wl-pprint base bytestring Cabal containers deepseq
    directory distribution-nixpkgs filepath hackage-db language-nix
    lens monad-par monad-par-extras mtl optparse-applicative pretty
    process SHA split text time transformers utf8-string yaml
  ];
  homepage = "https://github.com/nixos/cabal2nix#readme";
  description = "Convert Cabal files into Nix build instructions";
  license = stdenv.lib.licenses.bsd3;
});
"cereal" = callPackage ({ mkDerivation, array, base, bytestring, containers, ghc-prim
, QuickCheck, stdenv, test-framework, test-framework-quickcheck2
}:
mkDerivation {
  pname = "cereal";
  version = "0.5.4.0";
  sha256 = "1rzyr8r9pjlgas5pc8n776r22i0ficanq05ypqrs477jxxd6rjns";
  libraryHaskellDepends = [
    array base bytestring containers ghc-prim
  ];
  testHaskellDepends = [
    base bytestring QuickCheck test-framework
    test-framework-quickcheck2
  ];
  homepage = "https://github.com/GaloisInc/cereal";
  description = "A binary serialization library";
  license = stdenv.lib.licenses.bsd3;
});
"comonad" = callPackage ({ mkDerivation, base, Cabal, cabal-doctest, containers
, contravariant, distributive, doctest, semigroups, stdenv, tagged
, transformers, transformers-compat
}:
mkDerivation {
  pname = "comonad";
  version = "5.0.1";
  sha256 = "0ga67ynh1j4ylbn3awjh7iga09fypbh4fsa21mylcf4xgmlzs7sn";
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    base containers contravariant distributive semigroups tagged
    transformers transformers-compat
  ];
  testHaskellDepends = [ base doctest ];
  homepage = "http://github.com/ekmett/comonad/";
  description = "Comonads";
  license = stdenv.lib.licenses.bsd3;
});
"conduit" = callPackage ({ mkDerivation, base, containers, criterion, deepseq, exceptions
, hspec, kan-extensions, lifted-base, mmorph, monad-control, mtl
, mwc-random, primitive, QuickCheck, resourcet, safe, split, stdenv
, transformers, transformers-base, vector
}:
mkDerivation {
  pname = "conduit";
  version = "1.2.11";
  sha256 = "1xx8vj2azbzr2skcrpcy02hgnik01i6hcx01h0mjd4fr0hzl4rhb";
  libraryHaskellDepends = [
    base exceptions lifted-base mmorph monad-control mtl primitive
    resourcet transformers transformers-base
  ];
  testHaskellDepends = [
    base containers exceptions hspec mtl QuickCheck resourcet safe
    split transformers
  ];
  benchmarkHaskellDepends = [
    base containers criterion deepseq hspec kan-extensions mwc-random
    transformers vector
  ];
  homepage = "http://github.com/snoyberg/conduit";
  description = "Streaming data processing library";
  license = stdenv.lib.licenses.mit;
});
"containers" = callPackage ({ mkDerivation, array, base, ChasingBottoms, deepseq, ghc-prim
, HUnit, QuickCheck, stdenv, test-framework, test-framework-hunit
, test-framework-quickcheck2
}:
mkDerivation {
  pname = "containers";
  version = "0.5.7.1";
  sha256 = "0y8g81p2lx3c2ks2xa798iv0xf6zvks9lc3l6k1jdsp20wrnr1bk";
  libraryHaskellDepends = [ array base deepseq ghc-prim ];
  testHaskellDepends = [
    array base ChasingBottoms deepseq ghc-prim HUnit QuickCheck
    test-framework test-framework-hunit test-framework-quickcheck2
  ];
  description = "Assorted concrete container types";
  license = stdenv.lib.licenses.bsd3;
});
"contravariant" = callPackage ({ mkDerivation, base, semigroups, StateVar, stdenv, transformers
, transformers-compat, void
}:
mkDerivation {
  pname = "contravariant";
  version = "1.4";
  sha256 = "117fff8kkrvlmr8cb2jpj71z7lf2pdiyks6ilyx89mry6zqnsrp1";
  libraryHaskellDepends = [
    base semigroups StateVar transformers transformers-compat void
  ];
  homepage = "http://github.com/ekmett/contravariant/";
  description = "Contravariant functors";
  license = stdenv.lib.licenses.bsd3;
});
"deepseq" = callPackage ({ mkDerivation, array, base, HUnit, stdenv, test-framework
, test-framework-hunit
}:
mkDerivation {
  pname = "deepseq";
  version = "1.4.2.0";
  sha256 = "0la9x4hvf1rbmxv8h9dk1qln21il3wydz6wbdviryh4h2wls22ny";
  libraryHaskellDepends = [ array base ];
  testHaskellDepends = [
    array base HUnit test-framework test-framework-hunit
  ];
  description = "Deep evaluation of data structures";
  license = stdenv.lib.licenses.bsd3;
});
"directory" = callPackage ({ mkDerivation, base, filepath, stdenv, time, unix }:
mkDerivation {
  pname = "directory";
  version = "1.3.0.0";
  sha256 = "11ykplzx1kljcj0vsj8ly9m2hj3nmsj487xdly7b8rq15chxi71n";
  libraryHaskellDepends = [ base filepath time unix ];
  testHaskellDepends = [ base filepath time unix ];
  description = "Platform-agnostic library for filesystem operations";
  license = stdenv.lib.licenses.bsd3;
});
"distribution-nixpkgs" = callPackage ({ mkDerivation, aeson, base, bytestring, Cabal, containers, deepseq
, doctest, hspec, language-nix, lens, pretty, process, QuickCheck
, split, stdenv
}:
mkDerivation {
  pname = "distribution-nixpkgs";
  version = "1.0.0.1";
  sha256 = "0j0vzf7haqxwjcmsql7h26m5cqjrm4cdjdjzsfi89m2qrczzx6xn";
  libraryHaskellDepends = [
    aeson base bytestring Cabal containers deepseq language-nix lens
    pretty process split
  ];
  testHaskellDepends = [
    aeson base bytestring Cabal containers deepseq doctest hspec
    language-nix lens pretty process QuickCheck split
  ];
  homepage = "https://github.com/peti/distribution-nixpkgs#readme";
  description = "Types and functions to manipulate the Nixpkgs distribution";
  license = stdenv.lib.licenses.bsd3;
});
"distributive" = callPackage ({ mkDerivation, base, base-orphans, Cabal, cabal-doctest, doctest
, generic-deriving, hspec, stdenv, tagged, transformers
, transformers-compat
}:
mkDerivation {
  pname = "distributive";
  version = "0.5.2";
  sha256 = "1nbcyysnrkliy7xwx6f39p80kkp0vlvq14wdj6r0m5c1brmbxqmd";
  revision = "2";
  editedCabalFile = "1wp2wqhsshiyxxwil3q0az35vijn8cyd2g6866i32j3p9g01mkr9";
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    base base-orphans tagged transformers transformers-compat
  ];
  testHaskellDepends = [ base doctest generic-deriving hspec ];
  homepage = "http://github.com/ekmett/distributive/";
  description = "Distributive functors -- Dual to Traversable";
  license = stdenv.lib.licenses.bsd3;
});
"dlist" = callPackage ({ mkDerivation, base, Cabal, deepseq, QuickCheck, stdenv }:
mkDerivation {
  pname = "dlist";
  version = "0.8.0.2";
  sha256 = "1ca1hvl5kd4api4gjyhwwavdx8snq6gf1jr6ab0zmjx7p77pwfbp";
  libraryHaskellDepends = [ base deepseq ];
  testHaskellDepends = [ base Cabal QuickCheck ];
  homepage = "https://github.com/spl/dlist";
  description = "Difference lists";
  license = stdenv.lib.licenses.bsd3;
});
"exceptions" = callPackage ({ mkDerivation, base, mtl, QuickCheck, stdenv, stm
, template-haskell, test-framework, test-framework-quickcheck2
, transformers, transformers-compat
}:
mkDerivation {
  pname = "exceptions";
  version = "0.8.3";
  sha256 = "1gl7xzffsqmigam6zg0jsglncgzxqafld2p6kb7ccp9xirzdjsjd";
  revision = "2";
  editedCabalFile = "1vl59j0l7m53hkzlcfmdbqbab8dk4lp9gzwryn7nsr6ylg94wayw";
  libraryHaskellDepends = [
    base mtl stm template-haskell transformers transformers-compat
  ];
  testHaskellDepends = [
    base mtl QuickCheck stm template-haskell test-framework
    test-framework-quickcheck2 transformers transformers-compat
  ];
  homepage = "http://github.com/ekmett/exceptions/";
  description = "Extensible optionally-pure exceptions";
  license = stdenv.lib.licenses.bsd3;
});
"fail" = callPackage ({ mkDerivation, stdenv }:
mkDerivation {
  pname = "fail";
  version = "4.9.0.0";
  sha256 = "18nlj6xvnggy61gwbyrpmvbdkq928wv0wx2zcsljb52kbhddnp3d";
  homepage = "https://prime.haskell.org/wiki/Libraries/Proposals/MonadFail";
  description = "Forward-compatible MonadFail class";
  license = stdenv.lib.licenses.bsd3;
});
"filepath" = callPackage ({ mkDerivation, base, QuickCheck, stdenv }:
mkDerivation {
  pname = "filepath";
  version = "1.4.1.1";
  sha256 = "1d0jkzlhcvkikllnxz6ij8zsq6r4sx5ii3abahhdji1spkivvzaj";
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base QuickCheck ];
  homepage = "https://github.com/haskell/filepath#readme";
  description = "Library for manipulating FilePaths in a cross platform way";
  license = stdenv.lib.licenses.bsd3;
});
"free" = callPackage ({ mkDerivation, base, bifunctors, comonad, containers, distributive
, exceptions, mtl, prelude-extras, profunctors, semigroupoids
, semigroups, stdenv, template-haskell, transformers
, transformers-compat
}:
mkDerivation {
  pname = "free";
  version = "4.12.4";
  sha256 = "1147s393442xf4gkpbq0rd1p286vmykgx85mxhk5d1c7wfm4bzn9";
  libraryHaskellDepends = [
    base bifunctors comonad containers distributive exceptions mtl
    prelude-extras profunctors semigroupoids semigroups
    template-haskell transformers transformers-compat
  ];
  homepage = "http://github.com/ekmett/free/";
  description = "Monads for free";
  license = stdenv.lib.licenses.bsd3;
});
"ghc-boot-th" = callPackage ({ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "ghc-boot-th";
  version = "8.0.2";
  sha256 = "1w7qkgwpbp5h0hm8p2b5bbysyvnjrqbkqkfzd4ngz0yxy9qy402x";
  libraryHaskellDepends = [ base ];
  description = "Shared functionality between GHC and the @template-haskell@ library";
  license = stdenv.lib.licenses.bsd3;
});
"ghc-prim" = callPackage ({ mkDerivation, rts, stdenv }:
mkDerivation {
  pname = "ghc-prim";
  version = "0.5.0.0";
  sha256 = "1cnn5gcwnc711ngx5hac3x2s4f6dkdl7li5pc3c02lcghpqf9fs4";
  libraryHaskellDepends = [ rts ];
  description = "GHC primitives";
  license = stdenv.lib.licenses.bsd3;
});
"hackage-db" = callPackage ({ mkDerivation, base, bytestring, Cabal, containers, directory
, filepath, stdenv, tar, utf8-string
}:
mkDerivation {
  pname = "hackage-db";
  version = "1.22";
  sha256 = "0rhh7w4929zkwzv10ika952yiw4dkffqd8f79f1bl76lz1la6cjd";
  revision = "1";
  editedCabalFile = "0xj3wwf0wl8qfcz4zsxw0r6f79rg7h010jfv54gsiyzwpf67l9xm";
  libraryHaskellDepends = [
    base bytestring Cabal containers directory filepath tar utf8-string
  ];
  homepage = "http://github.com/peti/hackage-db";
  description = "access Hackage's package database via Data.Map";
  license = stdenv.lib.licenses.bsd3;
});
"hashable" = callPackage ({ mkDerivation, base, bytestring, criterion, deepseq, ghc-prim
, HUnit, integer-gmp, QuickCheck, random, siphash, stdenv
, test-framework, test-framework-hunit, test-framework-quickcheck2
, text, unix
}:
mkDerivation {
  pname = "hashable";
  version = "1.2.6.1";
  sha256 = "0ymv2mcrrgbdc2w39rib171fwnhg7fgp0sy4h8amrh1vw64qgjll";
  revision = "2";
  editedCabalFile = "0w4756sa04nk2bw3vnysb0y9d09zzg3c77aydkjfxz1hnl1dvnjn";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base bytestring deepseq ghc-prim integer-gmp text
  ];
  testHaskellDepends = [
    base bytestring ghc-prim HUnit QuickCheck random test-framework
    test-framework-hunit test-framework-quickcheck2 text unix
  ];
  benchmarkHaskellDepends = [
    base bytestring criterion ghc-prim integer-gmp siphash text
  ];
  homepage = "http://github.com/tibbe/hashable";
  description = "A class for types that can be converted to a hash value";
  license = stdenv.lib.licenses.bsd3;
});
"integer-gmp" = callPackage ({ mkDerivation, ghc-prim, stdenv }:
mkDerivation {
  pname = "integer-gmp";
  version = "1.0.0.1";
  sha256 = "08f1qcp57aj5mjy26dl3bi3lcg0p8ylm0qw4c6zbc1vhgnmxl4gg";
  revision = "1";
  editedCabalFile = "1mfl651b2v82qhm5h279mjhq4ilzf6x1yydi3npa10ja6isifvb1";
  libraryHaskellDepends = [ ghc-prim ];
  description = "Integer library based on GMP";
  license = stdenv.lib.licenses.bsd3;
});
"integer-logarithms" = callPackage ({ mkDerivation, array, base, ghc-prim, integer-gmp, QuickCheck
, smallcheck, stdenv, tasty, tasty-hunit, tasty-quickcheck
, tasty-smallcheck
}:
mkDerivation {
  pname = "integer-logarithms";
  version = "1.0.1";
  sha256 = "0k3q79yjwln3fk0m1mwsxc3rypysx6ayl13xqgm254dip273yi8g";
  revision = "1";
  editedCabalFile = "1kk94f88qnmvwya9afpr4gqygvg02qc8m571hvd6fmwgsfvphv1y";
  libraryHaskellDepends = [ array base ghc-prim integer-gmp ];
  testHaskellDepends = [
    base QuickCheck smallcheck tasty tasty-hunit tasty-quickcheck
    tasty-smallcheck
  ];
  homepage = "https://github.com/phadej/integer-logarithms";
  description = "Integer logarithms";
  license = stdenv.lib.licenses.mit;
});
"kan-extensions" = callPackage ({ mkDerivation, adjunctions, array, base, comonad, containers
, contravariant, distributive, fail, free, mtl, semigroupoids
, stdenv, tagged, transformers
}:
mkDerivation {
  pname = "kan-extensions";
  version = "5.0.2";
  sha256 = "0bj88bgwxlx490f5r979idsm9dpdsb0ldzar9sa0jhj2jn2xx7hw";
  libraryHaskellDepends = [
    adjunctions array base comonad containers contravariant
    distributive fail free mtl semigroupoids tagged transformers
  ];
  homepage = "http://github.com/ekmett/kan-extensions/";
  description = "Kan extensions, Kan lifts, various forms of the Yoneda lemma, and (co)density (co)monads";
  license = stdenv.lib.licenses.bsd3;
});
"language-nix" = callPackage ({ mkDerivation, base, base-compat, Cabal, deepseq, doctest, lens
, pretty, QuickCheck, stdenv
}:
mkDerivation {
  pname = "language-nix";
  version = "2.1.0.1";
  sha256 = "1kqsw0hk03wdn7mszyjgi38nxk1wmhbxfv6di3irrhsaf807657h";
  revision = "1";
  editedCabalFile = "1zv12p4ralrks0517zs52rzmzmsxxkcxkqz7zijfgcsvh6bsmafi";
  libraryHaskellDepends = [
    base base-compat Cabal deepseq lens pretty QuickCheck
  ];
  testHaskellDepends = [
    base base-compat Cabal deepseq doctest lens pretty QuickCheck
  ];
  homepage = "https://github.com/peti/language-nix#readme";
  description = "Data types and useful functions to represent and manipulate the Nix language";
  license = stdenv.lib.licenses.bsd3;
});
"lens" = callPackage ({ mkDerivation, array, base, base-orphans, bifunctors, bytestring
, comonad, containers, contravariant, criterion, deepseq, directory
, distributive, doctest, exceptions, filepath, free
, generic-deriving, ghc-prim, hashable, hlint, HUnit
, kan-extensions, mtl, nats, parallel, profunctors, QuickCheck
, reflection, semigroupoids, semigroups, simple-reflect, stdenv
, tagged, template-haskell, test-framework, test-framework-hunit
, test-framework-quickcheck2, test-framework-th, text, transformers
, transformers-compat, unordered-containers, vector, void
}:
mkDerivation {
  pname = "lens";
  version = "4.15.1";
  sha256 = "19myn50qwr1f8g3cx4fvzajln428qb8iwyi4qa9p2y5rn56adyjw";
  revision = "4";
  editedCabalFile = "0f8mn6zgfclibdgy9v1ga550ysmh8biwbyvsjhi93grh5lddwmg0";
  libraryHaskellDepends = [
    array base base-orphans bifunctors bytestring comonad containers
    contravariant distributive exceptions filepath free ghc-prim
    hashable kan-extensions mtl parallel profunctors reflection
    semigroupoids semigroups tagged template-haskell text transformers
    transformers-compat unordered-containers vector void
  ];
  testHaskellDepends = [
    base bytestring containers deepseq directory doctest filepath
    generic-deriving hlint HUnit mtl nats parallel QuickCheck
    semigroups simple-reflect test-framework test-framework-hunit
    test-framework-quickcheck2 test-framework-th text transformers
    unordered-containers vector
  ];
  benchmarkHaskellDepends = [
    base bytestring comonad containers criterion deepseq
    generic-deriving transformers unordered-containers vector
  ];
  homepage = "http://github.com/ekmett/lens/";
  description = "Lenses, Folds and Traversals";
  license = stdenv.lib.licenses.bsd3;
});
"lifted-base" = callPackage ({ mkDerivation, base, criterion, HUnit, monad-control, monad-peel
, stdenv, test-framework, test-framework-hunit, transformers
, transformers-base, transformers-compat
}:
mkDerivation {
  pname = "lifted-base";
  version = "0.2.3.11";
  sha256 = "1ass00wfa91z5xp2xmm97xrvwm7j5hdkxid5cqvr3xbwrsgpmi4f";
  libraryHaskellDepends = [ base monad-control transformers-base ];
  testHaskellDepends = [
    base HUnit monad-control test-framework test-framework-hunit
    transformers transformers-base transformers-compat
  ];
  benchmarkHaskellDepends = [
    base criterion monad-control monad-peel transformers
  ];
  homepage = "https://github.com/basvandijk/lifted-base";
  description = "lifted IO operations from the base library";
  license = stdenv.lib.licenses.bsd3;
});
"mmorph" = callPackage ({ mkDerivation, base, mtl, stdenv, transformers
, transformers-compat
}:
mkDerivation {
  pname = "mmorph";
  version = "1.0.9";
  sha256 = "0qs5alhy719a14lrs7rnh2qsn1146czg68gvgylf4m5jh4w7vwp1";
  revision = "1";
  editedCabalFile = "1xxf78qi08qsis2q785s0ra29wjxnxw8pyns0dsqp4a6cybd3mjd";
  libraryHaskellDepends = [
    base mtl transformers transformers-compat
  ];
  description = "Monad morphisms";
  license = stdenv.lib.licenses.bsd3;
});
"monad-control" = callPackage ({ mkDerivation, base, stdenv, stm, transformers, transformers-base
, transformers-compat
}:
mkDerivation {
  pname = "monad-control";
  version = "1.0.2.0";
  sha256 = "1k5lgwdnbqmzzc7y29pfq7a35g428qivsp5cafdv0mbn5kc59aq5";
  libraryHaskellDepends = [
    base stm transformers transformers-base transformers-compat
  ];
  homepage = "https://github.com/basvandijk/monad-control";
  description = "Lift control operations, like exception catching, through monad transformers";
  license = stdenv.lib.licenses.bsd3;
});
"monad-par" = callPackage ({ mkDerivation, abstract-deque, abstract-par, array, base
, containers, deepseq, HUnit, monad-par-extras, mtl, mwc-random
, parallel, QuickCheck, stdenv, test-framework
, test-framework-hunit, test-framework-quickcheck2
, test-framework-th, time
}:
mkDerivation {
  pname = "monad-par";
  version = "0.3.4.8";
  sha256 = "0ldrzqy24fsszvn2a2nr77m2ih7xm0h9bgkjyv1l274aj18xyk7q";
  libraryHaskellDepends = [
    abstract-deque abstract-par array base containers deepseq
    monad-par-extras mtl mwc-random parallel
  ];
  testHaskellDepends = [
    abstract-deque abstract-par array base containers deepseq HUnit
    monad-par-extras mtl mwc-random QuickCheck test-framework
    test-framework-hunit test-framework-quickcheck2 test-framework-th
    time
  ];
  homepage = "https://github.com/simonmar/monad-par";
  description = "A library for parallel programming based on a monad";
  license = stdenv.lib.licenses.bsd3;
});
"monad-par-extras" = callPackage ({ mkDerivation, abstract-par, base, cereal, deepseq, mtl, random
, stdenv, transformers
}:
mkDerivation {
  pname = "monad-par-extras";
  version = "0.3.3";
  sha256 = "0bl4bd6jzdc5zm20q1g67ppkfh6j6yn8fwj6msjayj621cck67p2";
  libraryHaskellDepends = [
    abstract-par base cereal deepseq mtl random transformers
  ];
  homepage = "https://github.com/simonmar/monad-par";
  description = "Combinators and extra features for Par monads";
  license = stdenv.lib.licenses.bsd3;
});
"mtl" = callPackage ({ mkDerivation, base, stdenv, transformers }:
mkDerivation {
  pname = "mtl";
  version = "2.2.1";
  sha256 = "1icdbj2rshzn0m1zz5wa7v3xvkf6qw811p4s7jgqwvx1ydwrvrfa";
  revision = "1";
  editedCabalFile = "0fsa965g9h23mlfjzghmmhcb9dmaq8zpm374gby6iwgdx47q0njb";
  libraryHaskellDepends = [ base transformers ];
  homepage = "http://github.com/ekmett/mtl";
  description = "Monad classes, using functional dependencies";
  license = stdenv.lib.licenses.bsd3;
});
"mwc-random" = callPackage ({ mkDerivation, base, math-functions, primitive, stdenv, time
, vector
}:
mkDerivation {
  pname = "mwc-random";
  version = "0.13.6.0";
  sha256 = "05j7yh0hh9nxic3dijmzv44kc6gzclvamdph7sq7w19wq57k6pq6";
  libraryHaskellDepends = [
    base math-functions primitive time vector
  ];
  doCheck = false;
  homepage = "https://github.com/bos/mwc-random";
  description = "Fast, high quality pseudo random number generation";
  license = stdenv.lib.licenses.bsd3;
});
"optparse-applicative" = callPackage ({ mkDerivation, ansi-wl-pprint, base, process, QuickCheck, stdenv
, transformers, transformers-compat
}:
mkDerivation {
  pname = "optparse-applicative";
  version = "0.13.2.0";
  sha256 = "18kcjldpzay3k3309rvb9vqrp5b1gqp0hgymynqx7x2kgv7cz0sw";
  libraryHaskellDepends = [
    ansi-wl-pprint base process transformers transformers-compat
  ];
  testHaskellDepends = [ base QuickCheck ];
  homepage = "https://github.com/pcapriotti/optparse-applicative";
  description = "Utilities and combinators for parsing command line options";
  license = stdenv.lib.licenses.bsd3;
});
"parallel" = callPackage ({ mkDerivation, array, base, containers, deepseq, stdenv }:
mkDerivation {
  pname = "parallel";
  version = "3.2.1.1";
  sha256 = "05rw8zhpqhx31zi6vg7zpyciaarh24j7g2p613xrpyrnksybjfrj";
  libraryHaskellDepends = [ array base containers deepseq ];
  description = "Parallel programming library";
  license = stdenv.lib.licenses.bsd3;
});
"parsec" = callPackage ({ mkDerivation, base, bytestring, HUnit, mtl, stdenv
, test-framework, test-framework-hunit, text
}:
mkDerivation {
  pname = "parsec";
  version = "3.1.11";
  sha256 = "0vk7q9j2128q191zf1sg0ylj9s9djwayqk9747k0a5fin4f2b1vg";
  libraryHaskellDepends = [ base bytestring mtl text ];
  testHaskellDepends = [
    base HUnit test-framework test-framework-hunit
  ];
  homepage = "https://github.com/aslatter/parsec";
  description = "Monadic parser combinators";
  license = stdenv.lib.licenses.bsd3;
});
"prelude-extras" = callPackage ({ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "prelude-extras";
  version = "0.4.0.3";
  sha256 = "0xzqdf3nl2h0ra4gnslm1m1nsxlsgc0hh6ky3vn578vh11zhifq9";
  libraryHaskellDepends = [ base ];
  homepage = "http://github.com/ekmett/prelude-extras";
  description = "Higher order versions of Prelude classes";
  license = stdenv.lib.licenses.bsd3;
});
"pretty" = callPackage ({ mkDerivation, base, deepseq, ghc-prim, QuickCheck, stdenv }:
mkDerivation {
  pname = "pretty";
  version = "1.1.3.3";
  sha256 = "164p5ybgf72hfpd3zsn8qpdxipn1pc1nl775jvn0kiqwymwjcqrv";
  libraryHaskellDepends = [ base deepseq ghc-prim ];
  testHaskellDepends = [ base deepseq ghc-prim QuickCheck ];
  homepage = "http://github.com/haskell/pretty";
  description = "Pretty-printing library";
  license = stdenv.lib.licenses.bsd3;
});
"pretty-simple" = callPackage ({ mkDerivation, ansi-terminal, base, containers, criterion, doctest
, Glob, mtl, parsec, stdenv, text, transformers
}:
mkDerivation {
  pname = "pretty-simple";
  version = "2.0.0.0";
  sha256 = "1gkghnp3fpcksfkvxsvg3979499y7vb73qp8fgvs7fv2m5rzqjz6";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    ansi-terminal base containers mtl parsec text transformers
  ];
  testHaskellDepends = [ base doctest Glob ];
  benchmarkHaskellDepends = [ base criterion ];
  homepage = "https://github.com/cdepillabout/pretty-simple";
  description = "pretty printer for data types with a 'Show' instance";
  license = stdenv.lib.licenses.bsd3;
});
"primitive" = callPackage ({ mkDerivation, base, ghc-prim, stdenv, transformers }:
mkDerivation {
  pname = "primitive";
  version = "0.6.1.0";
  sha256 = "1j1q7l21rdm8kfs93vibr3xwkkhqis181w2k6klfhx5g5skiywwk";
  revision = "1";
  editedCabalFile = "0gb8lcn6bd6ilfln7ah9jmqq6324vgkrgdsnz1qvlyj3bi2w5ivf";
  libraryHaskellDepends = [ base ghc-prim transformers ];
  testHaskellDepends = [ base ghc-prim ];
  homepage = "https://github.com/haskell/primitive";
  description = "Primitive memory-related operations";
  license = stdenv.lib.licenses.bsd3;
});
"process" = callPackage ({ mkDerivation, base, bytestring, deepseq, directory, filepath
, stdenv, unix
}:
mkDerivation {
  pname = "process";
  version = "1.4.3.0";
  sha256 = "1szhlzsjfmn5sd7r68scawqxa6l2xh0lszffi92bmhqr1b9g8wsl";
  libraryHaskellDepends = [ base deepseq directory filepath unix ];
  testHaskellDepends = [ base bytestring directory ];
  description = "Process libraries";
  license = stdenv.lib.licenses.bsd3;
});
"profunctors" = callPackage ({ mkDerivation, base, base-orphans, bifunctors, comonad
, contravariant, distributive, stdenv, tagged, transformers
}:
mkDerivation {
  pname = "profunctors";
  version = "5.2";
  sha256 = "1905xv9y2sx1iya0zlrx7nxhlwap5vn144nxg7s8zsj58xff59w7";
  revision = "1";
  editedCabalFile = "1q0zva60kqb560fr0ii0gm227sg6q7ddbhriv64l6nfv509vw32k";
  libraryHaskellDepends = [
    base base-orphans bifunctors comonad contravariant distributive
    tagged transformers
  ];
  homepage = "http://github.com/ekmett/profunctors/";
  description = "Profunctors";
  license = stdenv.lib.licenses.bsd3;
});
"random" = callPackage ({ mkDerivation, base, stdenv, time }:
mkDerivation {
  pname = "random";
  version = "1.1";
  sha256 = "0nis3lbkp8vfx8pkr6v7b7kr5m334bzb0fk9vxqklnp2aw8a865p";
  revision = "1";
  editedCabalFile = "1pv5d7bm2rgap7llp5vjsplrg048gvf0226y0v19gpvdsx7n4rvv";
  libraryHaskellDepends = [ base time ];
  testHaskellDepends = [ base ];
  description = "random number library";
  license = stdenv.lib.licenses.bsd3;
});
"reflection" = callPackage ({ mkDerivation, base, stdenv, template-haskell }:
mkDerivation {
  pname = "reflection";
  version = "2.1.2";
  sha256 = "0f9w0akbm6p8h7kzgcd2f6nnpw1wy84pqn45vfz1ch5j0hn8h2d9";
  libraryHaskellDepends = [ base template-haskell ];
  homepage = "http://github.com/ekmett/reflection";
  description = "Reifies arbitrary terms into types that can be reflected back into terms";
  license = stdenv.lib.licenses.bsd3;
});
"resourcet" = callPackage ({ mkDerivation, base, containers, exceptions, hspec, lifted-base
, mmorph, monad-control, mtl, stdenv, transformers
, transformers-base, transformers-compat
}:
mkDerivation {
  pname = "resourcet";
  version = "1.1.9";
  sha256 = "1x9f2qz57agl3xljp1wi0ab51p13czrpf6qjp3506rl9dg99j6as";
  libraryHaskellDepends = [
    base containers exceptions lifted-base mmorph monad-control mtl
    transformers transformers-base transformers-compat
  ];
  testHaskellDepends = [ base hspec lifted-base transformers ];
  homepage = "http://github.com/snoyberg/conduit";
  description = "Deterministic allocation and freeing of scarce resources";
  license = stdenv.lib.licenses.bsd3;
});
"scientific" = callPackage ({ mkDerivation, base, binary, bytestring, containers, criterion
, deepseq, ghc-prim, hashable, integer-gmp, integer-logarithms
, QuickCheck, smallcheck, stdenv, tasty, tasty-ant-xml, tasty-hunit
, tasty-quickcheck, tasty-smallcheck, text, vector
}:
mkDerivation {
  pname = "scientific";
  version = "0.3.4.15";
  sha256 = "1gsmpn3563k90nrai0jdjfvkxjjaxs7bxxsfbdpmw4xvbp2lmp9n";
  revision = "2";
  editedCabalFile = "1pxj3l4rm04l8rllv15sabspkw5nqhkhf38dsd2cyvr1n6669dd9";
  libraryHaskellDepends = [
    base binary bytestring containers deepseq ghc-prim hashable
    integer-gmp integer-logarithms text vector
  ];
  testHaskellDepends = [
    base binary bytestring QuickCheck smallcheck tasty tasty-ant-xml
    tasty-hunit tasty-quickcheck tasty-smallcheck text
  ];
  benchmarkHaskellDepends = [ base criterion ];
  homepage = "https://github.com/basvandijk/scientific";
  description = "Numbers represented using scientific notation";
  license = stdenv.lib.licenses.bsd3;
});
"semigroupoids" = callPackage ({ mkDerivation, base, base-orphans, bifunctors, comonad, containers
, contravariant, directory, distributive, doctest, filepath
, semigroups, stdenv, tagged, transformers, transformers-compat
}:
mkDerivation {
  pname = "semigroupoids";
  version = "5.1";
  sha256 = "0dgqc59p4xx5cl8qkpm6sn4wd3n59rq7l6din76hf10bnklqrb0n";
  libraryHaskellDepends = [
    base base-orphans bifunctors comonad containers contravariant
    distributive semigroups tagged transformers transformers-compat
  ];
  testHaskellDepends = [ base directory doctest filepath ];
  homepage = "http://github.com/ekmett/semigroupoids";
  description = "Semigroupoids: Category sans id";
  license = stdenv.lib.licenses.bsd3;
});
"semigroups" = callPackage ({ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "semigroups";
  version = "0.18.2";
  sha256 = "1r6hsn3am3dpf4rprrj4m04d9318v9iq02bin0pl29dg4a3gzjax";
  libraryHaskellDepends = [ base ];
  homepage = "http://github.com/ekmett/semigroups/";
  description = "Anything that associates";
  license = stdenv.lib.licenses.bsd3;
});
"split" = callPackage ({ mkDerivation, base, QuickCheck, stdenv }:
mkDerivation {
  pname = "split";
  version = "0.2.3.2";
  sha256 = "0fmnkvq1ky4dgyh1z2mvdal5pw103irvkf4p9d5x8wyl1nnylhs9";
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base QuickCheck ];
  description = "Combinator library for splitting lists";
  license = stdenv.lib.licenses.bsd3;
});
"stm" = callPackage ({ mkDerivation, array, base, stdenv }:
mkDerivation {
  pname = "stm";
  version = "2.4.4.1";
  sha256 = "111kpy1d6f5c0bggh6hyfm86q5p8bq1qbqf6dw2x4l4dxnar16cg";
  revision = "1";
  editedCabalFile = "0kzw4rw9fgmc4qyxmm1lwifdyrx5r1356150xm14vy4mp86diks9";
  libraryHaskellDepends = [ array base ];
  description = "Software Transactional Memory";
  license = stdenv.lib.licenses.bsd3;
});
"tagged" = callPackage ({ mkDerivation, base, deepseq, stdenv, template-haskell
, transformers, transformers-compat
}:
mkDerivation {
  pname = "tagged";
  version = "0.8.5";
  sha256 = "16cdzh0bw16nvjnyyy5j9s60malhz4nnazw96vxb0xzdap4m2z74";
  revision = "1";
  editedCabalFile = "15mqdimbgrq5brqljjl7dbxkyrxppap06q53cp7ml7w3l08v5mx8";
  libraryHaskellDepends = [
    base deepseq template-haskell transformers transformers-compat
  ];
  homepage = "http://github.com/ekmett/tagged";
  description = "Haskell 98 phantom types to avoid unsafely passing dummy arguments";
  license = stdenv.lib.licenses.bsd3;
});
"tar" = callPackage ({ mkDerivation, array, base, bytestring, bytestring-handle
, containers, criterion, deepseq, directory, filepath, old-time
, QuickCheck, stdenv, tasty, tasty-quickcheck, time
}:
mkDerivation {
  pname = "tar";
  version = "0.5.0.3";
  sha256 = "18qq94j9bm91iswnxq2dm5dws5c7wm4k01q2rpf8py35cf3svnfq";
  libraryHaskellDepends = [
    array base bytestring containers deepseq directory filepath time
  ];
  testHaskellDepends = [
    array base bytestring bytestring-handle containers deepseq
    directory filepath QuickCheck tasty tasty-quickcheck time
  ];
  benchmarkHaskellDepends = [
    array base bytestring containers criterion deepseq directory
    filepath old-time time
  ];
  description = "Reading, writing and manipulating \".tar\" archive files.";
  license = stdenv.lib.licenses.bsd3;
});
"template-haskell" = callPackage ({ mkDerivation, base, ghc-boot-th, pretty, stdenv }:
mkDerivation {
  pname = "template-haskell";
  version = "2.11.1.0";
  sha256 = "171ngdd93i9prp9d5a4ix0alp30ahw2dvdk7i8in9mzscnv41csz";
  libraryHaskellDepends = [ base ghc-boot-th pretty ];
  description = "Support library for Template Haskell";
  license = stdenv.lib.licenses.bsd3;
});
"text" = callPackage ({ mkDerivation, array, base, binary, bytestring, deepseq, directory
, ghc-prim, HUnit, integer-gmp, QuickCheck, quickcheck-unicode
, random, stdenv, test-framework, test-framework-hunit
, test-framework-quickcheck2
}:
mkDerivation {
  pname = "text";
  version = "1.2.2.1";
  sha256 = "0nrrzx0ws7pv4dx9jbc6jm2734al1cr0m6iwcnbck4v2yfyv3p8s";
  libraryHaskellDepends = [
    array base binary bytestring deepseq ghc-prim integer-gmp
  ];
  testHaskellDepends = [
    array base binary bytestring deepseq directory ghc-prim HUnit
    integer-gmp QuickCheck quickcheck-unicode random test-framework
    test-framework-hunit test-framework-quickcheck2
  ];
  doCheck = false;
  homepage = "https://github.com/bos/text";
  description = "An efficient packed Unicode text type";
  license = stdenv.lib.licenses.bsd3;
});
"tf-random" = callPackage ({ mkDerivation, base, primitive, random, stdenv, time }:
mkDerivation {
  pname = "tf-random";
  version = "0.5";
  sha256 = "0445r2nns6009fmq0xbfpyv7jpzwv0snccjdg7hwj4xk4z0cwc1f";
  libraryHaskellDepends = [ base primitive random time ];
  description = "High-quality splittable pseudorandom number generator";
  license = stdenv.lib.licenses.bsd3;
});
"time" = callPackage ({ mkDerivation, base, deepseq, QuickCheck, stdenv, test-framework
, test-framework-quickcheck2, unix
}:
mkDerivation {
  pname = "time";
  version = "1.6.0.1";
  sha256 = "1jvzgifkalfypbm479fzxb7yi8d5z00b4y6hf6qjdlpl71pv8sgz";
  libraryHaskellDepends = [ base deepseq ];
  testHaskellDepends = [
    base deepseq QuickCheck test-framework test-framework-quickcheck2
    unix
  ];
  homepage = "https://github.com/haskell/time";
  description = "A time library";
  license = stdenv.lib.licenses.bsd3;
});
"time-locale-compat" = callPackage ({ mkDerivation, base, old-locale, stdenv, time }:
mkDerivation {
  pname = "time-locale-compat";
  version = "0.1.1.3";
  sha256 = "1vdcfr2hp9qh3ag90x6ikbdf42wiqpdylnplffna54bpnilbyi4i";
  libraryHaskellDepends = [ base old-locale time ];
  homepage = "https://github.com/khibino/haskell-time-locale-compat";
  description = "Compatibility of TimeLocale between old-locale and time-1.5";
  license = stdenv.lib.licenses.bsd3;
});
"transformers" = callPackage ({ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "transformers";
  version = "0.5.2.0";
  sha256 = "1qkhi8ssf8c4jnmrw9dzym3igqbzq7h48iisaykdfzdsm09qfh3c";
  libraryHaskellDepends = [ base ];
  description = "Concrete functor and monad transformers";
  license = stdenv.lib.licenses.bsd3;
});
"transformers-base" = callPackage ({ mkDerivation, base, stdenv, stm, transformers
, transformers-compat
}:
mkDerivation {
  pname = "transformers-base";
  version = "0.4.4";
  sha256 = "11r3slgpgpra6zi2kjg3g60gvv17b1fh6qxipcpk8n86qx7lk8va";
  revision = "1";
  editedCabalFile = "196pr3a4lhgklyw6nq6rv1j9djwzmvx7xrpp58carxnb55gk06pv";
  libraryHaskellDepends = [
    base stm transformers transformers-compat
  ];
  homepage = "https://github.com/mvv/transformers-base";
  description = "Lift computations from the bottom of a transformer stack";
  license = stdenv.lib.licenses.bsd3;
});
"transformers-compat" = callPackage ({ mkDerivation, base, ghc-prim, stdenv, transformers }:
mkDerivation {
  pname = "transformers-compat";
  version = "0.5.1.4";
  sha256 = "17yam0199fh9ndsn9n69jx9nvbsmymzzwbi23dck3dk4q57fz0fq";
  libraryHaskellDepends = [ base ghc-prim transformers ];
  homepage = "http://github.com/ekmett/transformers-compat/";
  description = "A small compatibility shim exposing the new types from transformers 0.3 and 0.4 to older Haskell platforms.";
  license = stdenv.lib.licenses.bsd3;
});
"unix" = callPackage ({ mkDerivation, base, bytestring, stdenv, time }:
mkDerivation {
  pname = "unix";
  version = "2.7.2.1";
  sha256 = "1709ip8k1vahy00zi7v7qccw6rr22qrf3vk54h97jxrnjiakc1gw";
  revision = "1";
  editedCabalFile = "1m6gvvsb7ds25qws07wn6v3icksmh9g09qbrz726z8rnvvlbdc9x";
  libraryHaskellDepends = [ base bytestring time ];
  homepage = "https://github.com/haskell/unix";
  description = "POSIX functionality";
  license = stdenv.lib.licenses.bsd3;
});
"unordered-containers" = callPackage ({ mkDerivation, base, bytestring, ChasingBottoms, containers
, criterion, deepseq, deepseq-generics, hashable, hashmap, HUnit
, mtl, QuickCheck, random, stdenv, test-framework
, test-framework-hunit, test-framework-quickcheck2
}:
mkDerivation {
  pname = "unordered-containers";
  version = "0.2.8.0";
  sha256 = "1a7flszhhgyjn0nm9w7cm26jbf6vyx9ij1iij4sl11pjkwsqi8d4";
  libraryHaskellDepends = [ base deepseq hashable ];
  testHaskellDepends = [
    base ChasingBottoms containers hashable HUnit QuickCheck
    test-framework test-framework-hunit test-framework-quickcheck2
  ];
  benchmarkHaskellDepends = [
    base bytestring containers criterion deepseq deepseq-generics
    hashable hashmap mtl random
  ];
  homepage = "https://github.com/tibbe/unordered-containers";
  description = "Efficient hashing-based container types";
  license = stdenv.lib.licenses.bsd3;
});
"utf8-string" = callPackage ({ mkDerivation, base, bytestring, stdenv }:
mkDerivation {
  pname = "utf8-string";
  version = "1.0.1.1";
  sha256 = "0h7imvxkahiy8pzr8cpsimifdfvv18lizrb33k6mnq70rcx9w2zv";
  revision = "2";
  editedCabalFile = "1b97s9picjl689hcz8scinv7c8k5iaal1livqr0l1l8yc4h0imhr";
  libraryHaskellDepends = [ base bytestring ];
  homepage = "http://github.com/glguy/utf8-string/";
  description = "Support for reading and writing UTF8 Strings";
  license = stdenv.lib.licenses.bsd3;
});
"vector" = callPackage ({ mkDerivation, base, deepseq, ghc-prim, primitive, QuickCheck
, random, stdenv, template-haskell, test-framework
, test-framework-quickcheck2, transformers
}:
mkDerivation {
  pname = "vector";
  version = "0.11.0.0";
  sha256 = "1r1jlksy7b0kb0fy00g64isk6nyd9wzzdq31gx5v1wn38knj0lqa";
  revision = "2";
  editedCabalFile = "1kjafhgsyjqlvrpfv2vj17hipyv0zw56a2kbl6khzn5li9szvyib";
  libraryHaskellDepends = [ base deepseq ghc-prim primitive ];
  testHaskellDepends = [
    base QuickCheck random template-haskell test-framework
    test-framework-quickcheck2 transformers
  ];
  homepage = "https://github.com/haskell/vector";
  description = "Efficient Arrays";
  license = stdenv.lib.licenses.bsd3;
});
"vector-th-unbox" = callPackage ({ mkDerivation, base, data-default, stdenv, template-haskell
, vector
}:
mkDerivation {
  pname = "vector-th-unbox";
  version = "0.2.1.6";
  sha256 = "0d82x55f5vvr1jvaia382m23rs690lg55pvavv8f4ph0y6kd91xy";
  libraryHaskellDepends = [ base template-haskell vector ];
  testHaskellDepends = [ base data-default vector ];
  description = "Deriver for Data.Vector.Unboxed using Template Haskell";
  license = stdenv.lib.licenses.bsd3;
});
"void" = callPackage ({ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "void";
  version = "0.7.2";
  sha256 = "0aygw0yb1h3yhmfl3bkwh5d3h0l4mmsxz7j53vdm6jryl1kgxzyk";
  libraryHaskellDepends = [ base ];
  homepage = "http://github.com/ekmett/void";
  description = "A Haskell 98 logically uninhabited data type";
  license = stdenv.lib.licenses.bsd3;
});
"yaml" = callPackage ({ mkDerivation, aeson, aeson-qq, attoparsec, base, base-compat
, bytestring, conduit, containers, directory, filepath, hspec
, HUnit, mockery, resourcet, scientific, semigroups, stdenv
, template-haskell, temporary, text, transformers
, unordered-containers, vector
}:
mkDerivation {
  pname = "yaml";
  version = "0.8.23.1";
  sha256 = "0sv01yzi08mr2r7wkjcrsl5pf02zzv3y2n7amznv0pdj82sw16sa";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson attoparsec base bytestring conduit containers directory
    filepath resourcet scientific semigroups template-haskell text
    transformers unordered-containers vector
  ];
  executableHaskellDepends = [ aeson base bytestring ];
  testHaskellDepends = [
    aeson aeson-qq base base-compat bytestring conduit directory hspec
    HUnit mockery resourcet temporary text transformers
    unordered-containers vector
  ];
  homepage = "http://github.com/snoyberg/yaml/";
  description = "Support for parsing and rendering YAML documents";
  license = stdenv.lib.licenses.bsd3;
});
}
