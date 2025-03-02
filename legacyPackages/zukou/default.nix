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
}:

stdenv.mkDerivation rec {
  name = "zukou";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "zwin-project";
    repo = name;
    tag = "v" + version;
    hash = "sha256-9VHFjZPXkIbQcQEJLEUVsT3UnbvgWcZCXkcWLZx2bUA=";
  };

  buildInputs = [
    meson
    ninja
    wayland-scanner
  ];
  nativeBuildInputs = [
    zwin
    wayland
    libjpeg
    glm
  ];

  meta = with lib; {
    description = "Client library for Zwin.";
    homepage = "https://github.com/zwin-project/" + name;
    license = licenses.mit;
    platforms = platforms.linux;
  };
}