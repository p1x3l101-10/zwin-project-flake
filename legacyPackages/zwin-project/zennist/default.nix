{ lib
, stdenv
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
, librsvg2
, zukou
}:

stdenv.mkDerivation rec {
  name = "zennist";
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
    librsvg2
    zukou
  ];

  meta = with lib; {
    description = "Default 3D background/3D launcher in Zen";
    homepage = "https://github.com/zwin-project/" + name;
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
