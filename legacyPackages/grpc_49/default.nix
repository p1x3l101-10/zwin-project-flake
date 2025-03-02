{ grpc
, fetchFromGitHub
}:

grpc.overrideAttrs (oldAttrs: rec {
  version = "1.49.1";
  src = fetchFromGitHub {
    inherit (oldAttrs.src) owner repo fetchSubmodules;
    rev = "v${version}";
    hash = "sha256-xyhPyBtbY54qidjZSrPO8oRPA6EEVok/l42cY8DpER8=";
  };
  meta.description = oldAttrs.meta.description + " using old version for compat";
})