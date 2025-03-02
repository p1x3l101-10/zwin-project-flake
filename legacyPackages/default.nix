{ pkgs, lib }:

lib.makeScope pkgs.newScope (prev: {{
  protobuf_21_6 = callPackage ./protobuf_21_6 { };
  zwin-project = lib.attrsets.recurseIntoAttrs (import ./zwin-project { inherit (prev) callPackage; });
})
