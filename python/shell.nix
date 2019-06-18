let
  pkgs = import <nixpkgs> {};

  python = pkgs.python3.withPackages (pkgs: with pkgs; [
    numpy
    pandas
  ]);

in
  pkgs.mkShell {
    buildInputs = [
      python
    ];
  }

