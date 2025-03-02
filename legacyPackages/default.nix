{ pkgs, lib }:

{
  zwin-project = lib.makeScope pkgs.newScope (self: with self; {
    zen-protocols = callPackage ./zen-protocols {};
    zukou = callPackage ./zukou {};
    zwin = callPackage ./zwin {};
  });
}