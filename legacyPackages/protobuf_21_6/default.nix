{ path
, callPackage
, ...
}@args:

# Use the nixpkgs template for protobuf

callPackage (path + "/pkgs/development/libraries/protobuf/generic.nix") (
  {
    version = "21.6";
    hash = "sha256-6Omd2O/eIZIgod3YV+zIIv+GqT+trith6+eepFEJIWM=";
  }
  // args
)