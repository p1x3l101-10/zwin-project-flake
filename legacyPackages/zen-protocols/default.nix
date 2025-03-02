{ lib
, stdenv
, fetchFromGitHub
, meson
, ninja
}:

stdenv.mkDerivation rec {
  pname = "zen-protocols";

  src = fetchFromGitHub {
    owner = "zwin-project";
    repo = pname;
    rev = "918348103312f84a96a3961a3dde51713b93bc3d";
    hash = lib.fakeHash;
  };

  meta = with lib; {
    description = "Wayland protocols for Zen Desktop";
    homepage = "https://github.com/zwin-project/" + pname;
    license = licenses.mit;
    platforms = platforms.linux;
  };
}