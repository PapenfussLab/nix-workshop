## Why Nix?

Managing software is difficult. All of us have had the experience of
upgrading or installing a new piece of software only to break something
that was previously working, and know how tricky it can be to revert a
system to an earlier, functioning state.

Most of the difficulties of software management are caused by _side
effects_: that is, changes that are not explicitly captured and managed.
Examples of side effects include when one package clobbers files from
another package, or when a package requires a piece of software outside
of the dependencies that the package management system knows about. With
standard practice these particular side effects occur frequently, as all
software is installed under `/usr`, and software dependencies are
specified incompletely.

Nix is a package manager that manages side effects using a distinctive
model that is both comprehensive and concise. Moreover, Nix's model is
sufficiently general that it can be extended to handle OS configuration
(NixOS) and workflow management (BioNix).

For example, Nix manages the first side-effect described above by
installing each package to a separate location that is guaranteed to be
unique. User environments then link specifically to the locations of
required software, rather than pointing at a directory like `/usr/bin`.
This allows multiple versions of software to be co-installed and used
simultaneously without issue.

Nix makes it easy to:

-   Install, uninstall, and upgrade software (cf. package managers like
    apt, Homebrew, pip, conda);
-   Manage computational environments for development purposes (cf.
    `virtualenv` in Python);
-   Specify isolated computational environments (cf. Docker).

## What is Nix?

"Nix" is unfortunately an overloaded term, and can refer to two main
things:

1. Nix the configuration language (cf. the C programming language); and
2. Nix the build system (cf. gcc and make).

_Nix the language_ is very simple. You can think of it like JSON, but
extended with comments and, importantly, functions. It is the language
used to specify computation environments, how to build software, and how
to execute workflows (in BioNix). Nix expressions have extension `.nix`.
Nix expressions are high-level and human-readable.

_Nix the build system_ takes these specifications and “realises” them
into concrete outputs (files and folders) called _build products_. This
is analogous to compiling C source code into binary executables.

There is an intermediate step too, analogous to the object files output
by C compilers, or to CWL in bioinformatics. "Derivations" (with
extension `.drv`) are an intermediate, static configuration format
(analogous to a JSON or YAML schema) that completely describe how to
produce a given build product. This decouples Nix-the-build-system from
Nix-the-language; for example, Guix is a package management system that
uses Scheme to manage Nix-the-build-system.

```
Nix expressions ----> Derivations ----> Build products
*.nix                 *.drv             (any file(s))
```

## What is nixpkgs?

Nixpkgs is the main software collection for Nix. It consists of

-   A collection of software packages, each specified by an 
    expression written in Nix-the-language describing how to build it.
    While not complete, it is reasonably extensive and low level enough
    to build an operating system (NixOS does exactly this).
-   A library of common utilities for describing builds, doing cross
    compilation, and manipulating data structures. The library of
    functions is documented in the manual
    (https://nixos.org/nixpkgs/manual/#chap-functions).

## Why BioNix?

BioNix leverages the Nix system to specify and execute workflows within
reproducible computational environments managed by Nix. It is a thin
layer above Nix-the-build-system, written in Nix-the-language. By
leveraging Nix, BioNix is able to perform functions usually handled with
a combination of package managers, workflow engines, and containers.

BioNix will be covered in a future workshop in more detail; this
workshop will be focused on understanding Nix itself.

## Useful Nix resources

- The Nix manual: https://nixos.org/nix/manual
- The nixpkgs manual: https://nixos.org/nixpkgs/manual
- The Nix wiki: https://nixos.wiki
