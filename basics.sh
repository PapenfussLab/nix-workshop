## Managing software installed at the user level

# Find a piece of software
nix search bwa

# Install a piece of software
nix-env -i bwa
nix-env -iA nixpkgs.bwa

# List installed software
nix-env -q

# Update software
nix-channel --upgrade && nix-env -U

# Remove software
nix-env -e bwa

## Shells
nix-shell -p bwa samtools
nix-shell --pure -p bwa samtools
nix-shell # Will look for ./shell.nix and ./default.nix in that order
