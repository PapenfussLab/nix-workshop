## Why Nix?

Managing software is difficult. We've all had the experience where an
upgrade or install of new software can break something that was
previously functioning, and how hard it is to revert back to the
previouly functioning state. Nix is a (very general) package manager
that solves these typical issues with a different and clean model.

The core problem addressed by Nix is the control of _side effects_,
which I'll define here as any effect that is not captured by the system.
Examples include when one package clobbers files from another package,
or when a package depends on another peice of software outside of the
dependencies the system known about. With standard practice this happens
frequently as all software is installed under /usr.

Nix avoids this by installing each package to a separate location that's
guaranteed to be unique. Software environments then become a matter of
referring specifically to the locations of required software. This
solution allows multiple versions of software to be co-installed and
used simultaneously without issue.

## What is Nix?

Nix is unfortunately an overloaded term and refers to two main things:

1. Nix the configuration language (c.f., the C programming language)
2. Nix the build system (c.f., gcc)

Nix the language is very simple, you can think of it like a JSON format
but with comments and, importantly, functions. It is the language used
to specify computation environments, how to build software, and define
workflows (BioNix).

Nix the build system takes these specifications and “realises” them into
concrete things. It takes the description of how to build a piece of
software and carries it out, producing a _build product_. This is a bit
like make, if you are familiar with make. 

## What is nixpkgs?

Nixpkgs is the package collection comprising of Nix _expressions_
(written in Nix the configuration language) for a number of software
articles. While not complete, it is reasonably extensive and low level
enough to build an operating system (NixOS does exactly this). Nixpkgs
provides common functions for describing builds, doing cross
compilation, and manipulating data structures. The library of functions
is documented in the manual
(https://nixos.org/nixpkgs/manual/#chap-functions).

## Why BioNix?

BioNix leverages the Nix system to perform workflows within a
reproducible computational environment managed by Nix. It is a thin
layer above Nix to define workflows using the Nix language. BioNix will
be covered in a future workshop in more detail, this workshop will be
focused on understanding the underlying Nix system.


## Useful Nix resources

- The Nix manual: https://nixos.org/nix/manual
- The nixpkgs manual: https://nixos.org/nixpkgs/manual
- The Nix wiki: https://nixos.wiki