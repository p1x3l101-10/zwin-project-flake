{ inputs, lib, pkgs }:

rec {
  zwin-project = import ./zwin-project { inherit (inputs) self };
  default = zwin-project
}