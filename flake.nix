{
  description = "Flake for zwin-project";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixpkgs-old-grpc.url = "github:NixOS/nixpkgs/d86e0e4f6c1375280a36252e61eeb3f8052e770b"; # Needed for one specific version of grpc, you can just redirect to any flake that provides **that** version
    nixpkgs-old-wlroots.url = "github:NixOS/nixpkgs/a7034be1bbde519d1bf12bc11a5900f3166b11c1"; # Ditto, but for wlroots
  };
  outputs = inputs: import ./outputs.nix inputs;
}
