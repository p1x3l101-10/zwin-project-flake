{ pkgs, lib }:

{
  zwin-project = lib.attrsets.recurseIntoAttrs import ./zwin-project { inherit pkgs lib; };
}