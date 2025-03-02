{ lib
, stdenv
, fetchFromGitHub
, meson
, ninja
, pkg-config
, zwin
, wayland-scanner
, wayland
, libjpeg
, glm
, cmakeMinimal
, libGLX
, zwin
}:

stdenv.mkDerivation rec {
  name = "zukou";
  version = "0.1.1";

  src = fetchFromGitHub {
    owner = "zwin-project";
    repo = name;
    tag = "v" + version;
    hash = "sha256-QpnqACaLs2FmI6w7FlOqiusOvHQwdXwBmOLXnMFq8HM=";
  };

  buildInputs = [
    meson
    ninja
    wayland-scanner
    cmakeMinimal
    pkg-config
  ];
  nativeBuildInputs = [
    zwin
    wayland
    libjpeg
    glm
    libGLX
    zwin
  ];

  meta = with lib; {
    description = "Client library for Zwin.";
    homepage = "https://github.com/zwin-project/" + name;
    license = licenses.mit;
    platforms = platforms.linux;
  };
}