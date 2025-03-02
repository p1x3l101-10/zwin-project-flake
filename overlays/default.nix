{ inputs, lib, pkgs }:

let
  callOverlay = ovl: import ovl { inherit lib; inherit (inputs) self; };
in rec {
  zwin-project = callOverlay ./zwin-project;
  default = zwin-project;
}