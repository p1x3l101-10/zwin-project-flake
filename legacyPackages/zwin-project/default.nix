{ callPackage }:

rec {
  zen-object-viewer = callPackage ./zen-object-viewer { };
  zen-protocols = callPackage ./zen-protocols { };
  zen-remote = callPackage ./zen-remote { };
  zennist = callPackage ./zennist { };
  zukou = callPackage ./zukou { };
  zwin = callPackage ./zwin { };
}
