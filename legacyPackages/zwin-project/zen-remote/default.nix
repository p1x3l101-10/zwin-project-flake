{ lib
, clangStdenv
, fetchFromGitHub
, cmakeMinimal
, ninja
, grpc_49
, protobuf_21_6
, pkg-config
, openssl
, libGL
}:

clangStdenv.mkDerivation rec {
  name = "zen-remote";
  version = "0.1.1";

  src = fetchFromGitHub {
    owner = "zwin-project";
    repo = name;
    tag = "v" + version;
    hash = "sha256-mz837jq8lRuRblFl9QSTFW/tmtEwymEmJOesbIXEcgk=";
    fetchSubmodules = true;
  };

  nativeBuildInputs = [
    ninja
    cmakeMinimal
    pkg-config
    openssl.dev
  ];
  buildInputs = [
    grpc_49
    protobuf_21_6
    openssl
    libGL
  ];
  cmakeFlags = [
    "-DZEN_REMOTE_CLIENT=OFF"
    "-DZEN_REMOTE_GRPC_SYSROOT=${grpc_49.dev}"
  ];

  meta = with lib; {
    description = "A library that implements the communication layer between Zen running on the PC and Zen Mirror running on the HMD.";
    homepage = "https://github.com/zwin-project/" + name;
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
