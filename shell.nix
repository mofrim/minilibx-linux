{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  name = "mlx-env";

  buildInputs = with pkgs; [
    libbsd
    xorg.libXext
    xorg.libX11.dev
  ];

  shellHook = ''
    CC=gcc
    NIX11="${pkgs.xorg.libX11.dev}/include"
  '';
}
