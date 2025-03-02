{ path
, callPackage
, ...
}@args:

# Use the nixpkgs template for protobuf

callPackage (path + "/pkgs/development/libraries/protobuf/generic.nix") (
  {
    version = "21.6";
    hash = "sha256-VZQEFHq17UsTH5CZZOcJBKiScGV2xPJ/e6gkkVliRCU=";
  }
  // args
)