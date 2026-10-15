# gadgets-games-shanghai

Shanghai for the gadgets of [polpo](https://github.com/polpo-system/polpo): the mahjong solitaire, take away pairs of free tiles.

```
portia.Install gadgets-games-shanghai
```

## Playing

    Desktops.OpenDoc (Shanghai.NewDoc)    a new game

Click two free tiles that match; a tile is free when nothing lies on it and its left or right
side is open. The menu has Undo and New.

`tools/Shanghai.Tool` has these commands to click.

## What is here

    src/Shanghai.Mod           the game
    fonts/Shanghai.Scn.Fnt     the font of the tiles
    tools/Shanghai.Tool
    test/ShanghaiTest.Mod

Shanghai is by Patrick Saladin, from ETH Native Oberon 2.3.6. The source was converted from an Oberon text to plain text; the first commit has it
unchanged. It compiles unchanged with all five of polpo's compilers (x86, ARM, ARMv7, RISC-V,
MIPS).

## Tests

    ShanghaiTest.Run      2 checks: a game document made and loaded; it needs the desktop's display

The license is GPL-3 (`LICENSE`); the code comes from ETH Oberon, whose license (`LICENSE.ETH`)
asks to keep its copyright notice and conditions, which `LICENSE.ETH` does.
