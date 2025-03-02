{ self }: # Allow us to use our packages without needing the overlay applied

{ config, options, lib, pkgs, ... }:

let
  cfg = config.services.zwin;
  inherit (lib) mkEnableOption mkIf mkOption;
in {
  options.services.zwin = {
    enable = mkEnableOption "zwin";
  };

  config = mkIf cfg.enable {};
}