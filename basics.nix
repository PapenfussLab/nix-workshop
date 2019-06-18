## Core data types

# Booleans
true
false
true && true
true || false


# Int
1
2
3


# Strings
"a string"

''
multiline
string
''

"string" + "concat"


# Lists

[ 1 2 3 ]

[ 1 "hello" ]

[ 1 ] ++ [ 2 ]


# attribute sets
{
  key1 = "value1";
  "key 2" = "value2";
  key3 = {
    a = 5;
  };
}

{ a = 2; }.a

{ a = 1; c = 3; } // { b = 2; c = 4;}

# paths
/some/path
./.

## Functions and binding

# function
x: x + 1
a: b: a + b
{a, b}: a + b
{a, b, ...}: a + b
set@{a, b}: a + b
{a ? 5, b ? 1}: a + b

## String antiquotation
"string ${toString (5 + 5)}"

# let binding
let
  x = 1;
in x + x

let
  f = x: y: x + y;
in f 1 2

# with
with { a = 1; b = 2; }; a + b

# C.f. equivalent let
let
  a = 1;
  b = 2;
in a + b

## recursion
let
  x = y + 1;
  y = 1;
in x

rec {
  x = y + 1;
  y = 1;
}

## Conditionals
if true then "it's true!" else 0
if { a = 1; } ? b then "there's a b" else "there's no b"

## Loading modules
import /path/to/file.nix
import <nixpkgs> {}

## Standard library functions

lib.map (x: x + 1) [1 2 3]

lib.mapAttrs (name: value: value + name ) { a = "b"; c = "d"; }
lib.mapAttrsToList (name: value: value + name ) { a = "b"; c = "d"; }
