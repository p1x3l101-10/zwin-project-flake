{ lib
, clangStdenv
, fetchFromGitHub
, meson
, ninja
, pkg-config
, cmakeMinimal
, wayland
, wlroots
, pixman
, libxkbcommon
, libGLU
, glew
, freetype
, librsvg
, cglm
, grpc_49
, zen-remote
, zwin
, formats
}:

clangStdenv.mkDerivation rec {
  name = "zen";
  version = "0.1.3";

  src = fetchFromGitHub {
    owner = "zwin-project";
    repo = name;
    tag = "v" + version;
    hash = "sha256-re3LeZ2/1QOwgX7qv26fNc4xtRxDVwzfBoUfaQu8snw=";
  };

  nativeBuildInputs = [
    meson
    ninja
    pkg-config
    cmakeMinimal
  ];
  buildInputs = [
    wayland
    wlroots
    pixman
    libxkbcommon
    libGLU
    glew
    freetype
    librsvg
    cglm
  ];
  patches = [
    ./remove-meson-wrap.patch
  ];

  postInstallPhase = let
    exampleConfig = ((formats.toml { }).generate "config.toml" {
      board.initial_count = 3;
      space.default_app = "zennist";
    });
  in ''
    mkdir -p $out/etc/xdg/zen-desktop
    cp ${exampleConfig} $out/etc/xdg/zen-desktop/config.toml
    echo "[wallpaper]" >> $out/etc/xdg/zen-desktop/config.toml
    echo "filePath = $out/share/backgrounds/zen/Zen_Wallpaper_Main_3840x2160.png" >> $out/etc/xdg/zen-desktop/config.toml
  '';

  env = {
    CXXFLAGS = "-DGLM_ENABLE_EXPERIMENTAL"; # Causes build failure without
  };

  meta = with lib; {
    description = "The reference compositor implementation of Zwin protocol";
    homepage = "https://github.com/zwin-project/" + name;
    license = licenses.mit;
    platforms = platforms.linux;
  };
}