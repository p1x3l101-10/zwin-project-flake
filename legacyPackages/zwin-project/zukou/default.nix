{ lib
, clangStdenv
, fetchFromGitHub
, meson
, ninja
, pkg-config
, wayland-scanner
, wayland
, libjpeg
, glm
, cmakeMinimal
, libGL
, zwin
}:

clangStdenv.mkDerivation rec {
  name = "zukou";
  version = "0.1.1";

  src = fetchFromGitHub {
    owner = "zwin-project";
    repo = name;
    tag = "v" + version;
    hash = "sha256-QpnqACaLs2FmI6w7FlOqiusOvHQwdXwBmOLXnMFq8HM=";
  };

  nativeBuildInputs = [
    meson
    ninja
    wayland.dev
    wayland-scanner
    cmakeMinimal
    pkg-config
  ];
  buildInputs = [
    zwin
    wayland
    libjpeg
    glm
    libGL
    zwin
  ];

  meta = with lib; {
    description = "Client library for Zwin.";
    homepage = "https://github.com/zwin-project/" + name;
    license = licenses.mit;
    platforms = platforms.linux;
  };
}