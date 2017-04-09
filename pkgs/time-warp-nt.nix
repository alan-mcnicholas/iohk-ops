{ mkDerivation, async, attoparsec, base, binary, bytestring
, containers, criterion, data-default, deepseq, ekg, ekg-core
, exceptions, fetchgit, formatting, hashable, hspec, kademlia, lens
, log-warper, mmorph, monad-control, mtl, mwc-random, network
, network-transport, network-transport-inmemory
, network-transport-tcp, QuickCheck, quickcheck-instances, random
, semigroups, serokell-util, statistics, stdenv, stm, text
, text-format, time, time-units, transformers, universum
, unordered-containers, vector
}:
mkDerivation {
  pname = "node-sketch";
  version = "0.1.1.0";
  src = fetchgit {
    url = "https://github.com/serokell/time-warp-nt.git";
    sha256 = "17isyy83z5jrkg6zrqs7wzfn07sjickvvdwg14g1shqb6gd8jas5";
    rev = "e0a48924e7e308f1164168a81f67c0f25eaabda1";
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    async attoparsec base binary bytestring containers data-default
    deepseq ekg ekg-core exceptions formatting hashable kademlia lens
    log-warper mmorph monad-control mtl mwc-random network
    network-transport network-transport-tcp random semigroups
    serokell-util statistics stm text text-format time time-units
    transformers universum unordered-containers vector
  ];
  executableHaskellDepends = [
    async base binary bytestring containers criterion mwc-random
    network-transport network-transport-tcp random statistics stm time
    time-units vector
  ];
  testHaskellDepends = [
    base binary bytestring containers hspec lens mtl network-transport
    network-transport-inmemory network-transport-tcp QuickCheck
    quickcheck-instances random serokell-util stm time-units
  ];
  doCheck = false;
  license = stdenv.lib.licenses.mit;
}