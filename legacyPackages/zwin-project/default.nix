{ lib, pkgs }:

lib.makeScope (lib.callPackageWith pkgs) (prev: {
  zen-protocols = prev.callPackage ./zen-protocols {};
  zwin = prev.callPackage ./zwin {};
  zukou = prev.callPackage ./zukou {};
})