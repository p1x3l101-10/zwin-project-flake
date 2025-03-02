{
  description = "Flake for zwin-project";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  };
  outputs = inputs: import ./outputs.nix inputs;
}