# Replacing a symbol in a library 

## Example
The `myLib` target has 2 functions, from different modules, with the same name.

## Objective
Dispel the duplicated symbol.

## Method
- Build the library normally with `add_library()`.

- Construct a __custom command__ to:
  - Manipulate the offending symbol with `iobjmanip` during the **PRE_LINK** phase.

- Build a test target which uses the tweaked symbol from `myLib`.

