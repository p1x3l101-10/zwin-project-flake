{ makeScope, newScope }:

makeScope newScope (prev: {
  zen = prev.callPackage ./zen { };
  zen-object-viewer = prev.callPackage ./zen-object-viewer { };
  zen-protocols = prev.callPackage ./zen-protocols { };
  zen-remote = prev.callPackage ./zen-remote { };
  zennist = prev.callPackage ./zennist { };
  zukou = prev.callPackage ./zukou { };
  zwin = prev.callPackage ./zwin { };
})
