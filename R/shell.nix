let
  pkgs = import <nixpkgs> {};

  rWrapper = pkgs.rWrapper.override {
    packages = with pkgs.rPackages; [
      tidyverse
      ggplot2
      limma
    ];
  };
in
  pkgs.mkShell {
    buildInputs = [
      rWrapper
    ];
  }

