{ lib
, stdenv
, fetchFromGitHub
, cmakeMinimal
, ninja
, grpc
}:

stdenv.mkDerivation rec {
  name = "zen-remote";
  version = "0.1.2";

  src = fetchFromGitHub {
    owner = "zwin-project";
    repo = name;
    tag = "v" + version;
    hash = "sha256-uuDvSqeyNIGMyiToaa7puh1pVRDt8f2N0SG8tWxRnqQ=";
    fetchSubmodules = true;
  };

  nativeBuildInputs = [
    ninja
    cmakeMinimal
  ];
  buildInputs = [
    grpc
  ];
  cmakeFlags = [
    "-DZEN_REMOTE_CLIENT=OFF"
    "-DZEN_REMOTE_GRPC_SYSROOT=${grpc}"
  ];

  meta = with lib; {
    description = "A library that implements the communication layer between Zen running on the PC and Zen Mirror running on the HMD.";
    homepage = "https://github.com/zwin-project/" + name;
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
