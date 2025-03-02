inputs:
let
  inherit (inputs) nixpkgs;
  pkgs = nixpkgs.legacyPackages.x86_64-linux;
  lib = nixpkgs.lib;
in {
  legacyPackages.x86_64-linux = import ./legacyPackages { inherit lib pkgs; };
}