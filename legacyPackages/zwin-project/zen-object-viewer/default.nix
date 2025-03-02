{ lib
, stdenv
, fetchFromGitHub
, meson
, ninja
, pkg-config
, glm
, zukou
}:

stdenv.mkDerivation rec {
  name = "zen-object-viewer";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "zwin-project";
    repo = name;
    tag = "v" + version;
    hash = "sha256-w2kwMUtbsDN2sJeW6BooLdf5uvH9IXLJsKz760MNF10=";
  };

  nativeBuildInputs = [
    meson
    ninja
    pkg-config
  ];
  buildInputs = [
    zukou
    glm
  ];

  meta = with lib; {
    description = "";
    homepage = "https://github.com/zwin-project/" + name;
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
