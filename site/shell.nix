with (import <nixpkgs> {});
let
  ruby = pkgs.ruby;
  glitsch = pkgs.callPackage ./glitsch.nix { inherit ruby; };
in stdenv.mkDerivation {
  name = "glitsch-shell";

  buildInputs = [
    glitsch
    ruby.devEnv
    bundix
  ];

  shellHook = ''
    echo $BUNDLE_BIN
    echo $GEM_PATH
    echo $GEM_HOME
  '';
}
