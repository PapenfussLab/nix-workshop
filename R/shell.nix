let
  pkgs = import <nixpkgs> {};

  rWrapper = pkgs.rWrapper.override {
    packages = with pkgs.rPackages; [
      tidyverse
      ggplot2
    ];
  };
in
  pkgs.mkShell {
    buildInputs = [
      rWrapper
    ];
  }

