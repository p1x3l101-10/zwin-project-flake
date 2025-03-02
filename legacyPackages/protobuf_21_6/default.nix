{ path
, callPackage
, ...
}@args:

# Use the nixpkgs template for protobuf

callPackage (path + "/pkgs/development/libraries/protobuf/generic.nix") (
  {
    version = "21.6";
    hash = "";
  }
  // args
)