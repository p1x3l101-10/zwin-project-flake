{ lib, pkgs }:

lib.makeScope pkgs.newScope (prev: {
  zen-protocols = prev.callPackage ./zen-protocols { };
  zen-remote = prev.callPackage ./zen-remote { };
  zennist = prev.callPackage ./zennist { };
  zukou = prev.callPackage ./zukou { };
  zwin = prev.callPackage ./zwin { };
})
