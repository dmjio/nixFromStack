{ mkDerivation, async, base, cabal2nix, containers, directory
, language-nix, pretty-simple, process, split, stdenv
}:
mkDerivation {
  pname = "nixFromStack";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    async base cabal2nix containers directory language-nix
    pretty-simple process split
  ];
  homepage = "github.com/dmjio/nixFromStack";
  description = "Generate nix expressions from stack files";
  license = stdenv.lib.licenses.bsd3;
}
