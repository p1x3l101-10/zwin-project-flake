{ grpc
, fetchFromGitHub
, fetchpatch
}:

# Copy data from nixpkgs rev: <d86e0e4f6c1375280a36252e61eeb3f8052e770b>

grpc.overrideAttrs (oldAttrs: rec {
  version = "1.49.1";
  src = fetchFromGitHub {
    inherit (oldAttrs.src) owner repo fetchSubmodules;
    rev = "v${version}";
    hash = "sha256-xyhPyBtbY54qidjZSrPO8oRPA6EEVok/l42cY8DpER8=";
  };
  patches = [
    # Fix build on armv6l (https://github.com/grpc/grpc/pull/21341)
    (fetchpatch {
      url = "https://github.com/grpc/grpc/commit/2f4cf1d9265c8e10fb834f0794d0e4f3ec5ae10e.patch";
      sha256 = "0ams3jmgh9yzwmxcg4ifb34znamr7pb4qm0609kvil9xqvkqz963";
    })

    # Revert gRPC C++ Mutex to be an alias of Abseil, because it breaks dependent packages
    (fetchpatch {
      url = "https://github.com/grpc/grpc/commit/931f91b745cd5b2864a0d1787815871d0bd844ae.patch";
      sha256 = "0vc93g2i4982ys4gzyaxdv9ni25yk10sxq3n7fkz8dypy8sylck7";
      revert = true;
    })
  ];
  meta.description = oldAttrs.meta.description + " using old version for compat";
})