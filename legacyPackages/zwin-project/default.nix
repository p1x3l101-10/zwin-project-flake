{ lib, pkgs }:

lib.makeScope pkgs.newScope (prev: {
  zen-protocols = prev.callPackage ./zen-protocols { };
  zwin = prev.callPackage ./zwin { };
  zukou = prev.callPackage ./zukou { };
})
