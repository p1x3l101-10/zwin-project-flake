inputs:
let
  inherit (inputs) nixpkgs;
  pkgs = nixpkgs.legacyPackages.x86_64-linux;
  lib = nixpkgs.lib;
  callModule = m: import m { inherit inputs lib pkgs; };
in
{
  legacyPackages.x86_64-linux = callModule ./legacyPackages;
  formatter.x86_64-linux = pkgs.nixpkgs-fmt;
  overlays = callModule ./overlays;
}
