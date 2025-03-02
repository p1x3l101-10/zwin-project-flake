{ lib
, stdenv
, fetchFromGitHub
, cmakeMinimal
, ninja
, grpc_49
, protobuf_21_6
, pkg-config
, openssl
}:

stdenv.mkDerivation rec {
  name = "zen-remote";
  version = "0.1.2";

  src = fetchFromGitHub {
    owner = "zwin-project";
    repo = name;
    tag = "v" + version;
    hash = "sha256-otK/J1OK2B1b+SVBXcP1qBkP9sjW4rHrMWbQxsPcJ2Q=";
    fetchSubmodules = true;
  };

  nativeBuildInputs = [
    ninja
    cmakeMinimal
    pkg-config
  ];
  buildInputs = [
    grpc_49
    protobuf_21_6
    openssl
  ];
  cmakeFlags = [
    "-DZEN_REMOTE_CLIENT=OFF"
    "-DZEN_REMOTE_GRPC_SYSROOT=${grpc_49}"
  ];

  meta = with lib; {
    description = "A library that implements the communication layer between Zen running on the PC and Zen Mirror running on the HMD.";
    homepage = "https://github.com/zwin-project/" + name;
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
