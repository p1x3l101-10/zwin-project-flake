{ callPackage }:

{
  zen-protocols = callPackage ./zen-protocols { };
  zen-remote = callPackage ./zen-remote { };
  zukou = callPackage ./zukou { };
  zwin = callPackage ./zwin { };

  zen-object-viewer = callPackage ./zen-object-viewer { };
  zennist = callPackage ./zennist { };
}
