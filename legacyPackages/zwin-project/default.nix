{ lib, pkgs }:

lib.makeScope pkgs.newScope (self: with self; {
  zen-protocols = callPackage ./zen-protocols {};
  zwin = callPackage ./zwin {};
  zukou = callPackage ./zukou { inherit (self) zwin };
})