{ pkgs, lib, inputs }:

lib.makeScope pkgs.newScope (prev: {
  grpc_49 = inputs.nixpkgs-old-grpc.legacyPackages.x86_64-linux.grpc;
  protobuf_21_6 = prev.callPackage ./protobuf_21_6 { };
  inherit (inputs.nixpkgs-old-wlroots.legacyPackages.x86_64-linux) wlroots_0_15;
  zwin-project = lib.attrsets.recurseIntoAttrs (import ./zwin-project { inherit (lib) makeScope; inherit (prev) newScope; });
})
