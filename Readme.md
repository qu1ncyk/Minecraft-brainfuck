# Minecraft brainfuck
An implementation of Brainfuck in Minecraft Bedrock.

<img src="Screenshots/After_init.png?raw=true" width="28.7%"
alt="3 armor stands, each standing on top of a block"
title="After you run /function bf/init" />
<img src="Screenshots/While_running.png?raw=true" width="69.3%"
alt="A row of brainfuck blocks with an armor stand on top of one and some stone and dirt blocks, 2 of which has an armor stand on top of it."
title="While a program is running" />

## Installation
Go to the
[releases page](https://github.com/qu1ncyk/Minecraft-brainfuck/releases)
and download `Brainfuck beh.mcpack` (required) and
`Brainfuck res.mcpack` (optional, but recommended) and open them with
Minecraft.

### Building
To create the `.mcpack` files, run `create_packages.py`.

## Usage
### Initialisation
If you just installed this, you want to run `/function bf/init`, to
create the structure you see in the first picture and set the
required scores and tags. Now you can create a program by adding
Brainfuck blocks (retextured concrete) at the right side of the lower
`Start` block.

### Improrting from a `.bf` script
You can also convert an existing script by placing the script in
`behavior_packs/Brainfuck/import` and by executing
`bf2mcfunction.py`. This will create a function for every `.bf` file
that imports the script, when executed. When an import script is ran,
it also removes the current program and cleares the memory.

### Running a program
There are 2 functions that can be used to run a program: `bf/run` and
`bf/step`. `run` tries to execute everything in one function call,
which can work with very small scripts, but it will probably hit the
limit of
[10,000 commands per function call](https://minecraft.gamepedia.com/Function_(Bedrock_Edition)#Limits)
and stop midway. There also is `bf/step`, which steps one block
forward and executes it. It can be used in a repeating command block.
If that is too slow for you, you can point the command block into
chain command blocks to make it go faster.

### Resetting
After executing a program, you can reset it by running
`/function bf/reset`. That will clear the memory and bring the
instruction pointer (the lower armor stand) to the starting position.
When you want to remove the current program, run
`/function bf/clear_script`.

### Removing Brainfuck
When you are done using this, don't just remove the resource and
behavior pack, first run `/function bf/destruct` to remove the
blocks, armor stands, scores and tags set by Brainfuck.

## License
All .png files are dual-licensed under [GPLv3 or later](LICENSE) or
[CC BY-SA 4.0](CC%20BY-SA%204.0.LICENSE).
[hello_world.bf](behavior_packs/Brainfuck/functions/bf/import/hello_world.bf)
is licensed under [CC0](CC0.LICENSE). All other files are licensed
under [GPLv3 or later](LICENSE).