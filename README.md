# External Code Extension

This Extension allows to integrate external code files to C-of-Time (https://github.com/SkyTemple/c-of-time).

In particular, this provides support to write effects directly to effects slots in `BALANCE/waza_cd.bin`, `BALANCE/item_cd.bin` and `BALANCE/process.bin` files created by
SkyTemple patches.

## How to Use

Add this repo as a submodule of your C-of-Time repo:
```sh
git submodule add https://github.com/irdkwia/external-code-extension modules/external-code-extension
```

## Patch Extensions

Two extensions are defined:
- `file` lets you output compiled binary to a separate file in `fragments` folder
    Exact file name is described by sub params
    You are free to use any memory area for this extension
- `codebin` lets you output compiled binary directly to `BALANCE/waza_cd.bin`, `BALANCE/item_cd.bin` and `BALANCE/process.bin` effects file slots
    sub params are 'CTYPE.SLOT', where CTYPE is ('move', 'item', 'sp') and
    SLOT the slot number to replace
    Memory areas to use are already defined in this file for all three types
    NOTE: Moves/Items/SPs must be placed inside their dedicated
    OVERLAY block to share their virtual address

Example of integration via linkerscript defined in 'linker.ld'

For `codebin` extension helper functions are defined in `src/codebin.h` and can be imported with `#include <codebin.h>` and example definition is available in `src/codebin.c`

## Credits

C-of-Time
- techticks

SkyTemple
- https://github.com/Skytemple