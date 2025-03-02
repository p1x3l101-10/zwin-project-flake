{ grpc }:

grpc.overrideAttrs (oldAttrs: rec {
  version = "1.49.1";
  src = oldAttrs.src.overrideAttrs (oldSrcAttrs: {
    rev = "v${version}";
    hash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
  });
  meta.description = oldAttrs.meta.description + " using old version for compat";
})