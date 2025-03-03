{
  description = "Flake for zwin-project";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixpkgs-old-grpc.url = "github:NixOS/nixpkgs/d86e0e4f6c1375280a36252e61eeb3f8052e770b"; # Needed for one specific version of grpc, you can just redirect to any flake that provides **that** version
  };
  outputs = inputs: import ./outputs.nix inputs;
}
