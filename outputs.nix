inputs:
let
  inherit (inputs) nixpkgs;
  pkgs = nixpkgs.legacyPackages.x86_64-linux;
  lib = nixpkgs.lib;
in
{
  legacyPackages.x86_64-linux = import ./legacyPackages { inherit lib pkgs; };
  formatter.x86_64-linux = pkgs.nixpkgs-fmt;
  overlays = import ./overlays { inherit inputs lib pkgs; };
}
