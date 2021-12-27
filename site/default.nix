{ stdenv, pkgs, ruby }:

pkgs.callPackage ./glitsch.nix {
  inherit ruby;
  dependencies = with pkgs; [
    pngcrush
    imagemagick7
  ];
}
