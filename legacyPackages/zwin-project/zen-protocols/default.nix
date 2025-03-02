{ lib
, stdenv
, fetchFromGitHub
, meson
, ninja
}:

stdenv.mkDerivation rec {
  name = "zen-protocols";
  version = "0.0.0"; # No version upstream

  src = fetchFromGitHub {
    owner = "zwin-project";
    repo = name;
    rev = "918348103312f84a96a3961a3dde51713b93bc3d";
    hash = "sha256-Gy5BhwIVzziZ2aTrmEP/s1CbuXdWEZMOoKp+3cFOzV8=";
  };

  meta = with lib; {
    description = "Wayland protocols for Zen Desktop";
    homepage = "https://github.com/zwin-project/" + name;
    license = licenses.mit;
    platforms = platforms.linux;
  };
}