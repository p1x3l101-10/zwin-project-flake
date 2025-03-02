{ pkgs, lib }:

lib.makeScope pkgs.newScope (prev: {
  grpc_49 = prev.callPackage ./grpc_49 { };
  protobuf_21_6 = prev.callPackage ./protobuf_21_6 { };
  zwin-project = lib.attrsets.recurseIntoAttrs (import ./zwin-project { inherit (prev) callPackage; });
})
