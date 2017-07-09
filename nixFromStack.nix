{ mkDerivation, async, base, cabal2nix, containers, directory
, language-nix, pretty, pretty-simple, process, split, stdenv, text
}:
mkDerivation {
  pname = "nixFromStack";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    async base cabal2nix containers directory language-nix pretty
    pretty-simple process split text
  ];
  homepage = "github.com/dmjio/nixFromStack";
  description = "Generate nix expressions from stack files";
  license = stdenv.lib.licenses.bsd3;
}
