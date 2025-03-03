{ lib, self }:

final: prev:

{
  inherit (self.legacyPackages.x86_64-linux) zwin-project grpc_49 protobuf_21_6 wlroots_0_15;
}