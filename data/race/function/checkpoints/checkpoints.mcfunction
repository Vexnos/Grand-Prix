execute in minecraft:overworld positioned -735 132 -4042 as @a[distance=..1,tag=!hailstone] run function race:checkpoints/hailstone
execute in minecraft:overworld positioned -22 176 -3419 as @a[distance=..1,tag=!northwindPass] run function race:checkpoints/verify/northwindpass
execute in minecraft:overworld positioned -551 61 -3363 as @a[distance=..1,tag=!ardoniArena] run function race:checkpoints/verify/ardoniarena
execute in minecraft:overworld positioned -1152 119 -2990 as @a[distance=..1,tag=!kaltaria] run function race:checkpoints/verify/kaltaria
execute in minecraft:overworld positioned -1528 79 -2459 as @a[distance=..1,tag=!voltaria] run function race:checkpoints/verify/voltaria
execute in minecraft:overworld positioned -1291 90 -1302 as @a[distance=..1,tag=!oakendale] run function race:checkpoints/verify/oakendale
execute in minecraft:overworld positioned -1946 168 -967 as @a[distance=..1,tag=!etherea] run function race:checkpoints/verify/etherea
execute in minecraft:overworld positioned -3805 102 -63 as @a[distance=..1,tag=!felora] run function race:checkpoints/verify/felora
execute in minecraft:overworld positioned -3416 82 385 as @a[distance=..1,tag=!fortZuka] run function race:checkpoints/verify/fortzuka
execute in minecraft:overworld positioned -1376 81 -186 as @a[distance=..1,tag=!redstoneAcademy] run function race:checkpoints/verify/redstoneacademy
execute in minecraft:overworld positioned -703 84 -178 as @a[distance=..1,tag=!vault] run function race:checkpoints/verify/vault
execute in minecraft:the_nether positioned -376 58 -1089 as @a[distance=..1,tag=!nazgard] run function race:checkpoints/verify/nazgard
execute in minecraft:the_end positioned -1113 55 -472 as @a[distance=..1,tag=!theEnd] run function race:checkpoints/verify/theend
execute in minecraft:overworld positioned -703 99 579 as @a[distance=..1,tag=!crownPeak] run function race:checkpoints/verify/crownpeak
execute in minecraft:overworld positioned -21 199 894 as @a[distance=..1,tag=!mtVelgrin] run function race:checkpoints/verify/mtvelgrin
execute in minecraft:overworld positioned -55 51 2470 as @a[distance=..1,tag=!tartarus] run function race:checkpoints/verify/tartarus
execute in minecraft:overworld positioned 61 85 4605 as @a[distance=..1,tag=!meridian] run function race:checkpoints/verify/meridian
execute in minecraft:overworld positioned 1569 107 1199 as @a[distance=..1,tag=!amaria] run function race:checkpoints/verify/amaria
execute in minecraft:overworld positioned 1842 109 -289 as @a[distance=..1,tag=!hyperia] run function race:checkpoints/verify/hyperia
execute in minecraft:overworld positioned 98 170 -618 as @a[distance=..1,tag=!ataraxia] run function race:checkpoints/verify/ataraxia
execute in minecraft:overworld positioned -396 100 -1376 as @a[distance=..1,tag=!biggerton] run function race:checkpoints/verify/biggerton
execute in minecraft:overworld positioned -193 99 -2383 as @a[distance=..1,tag=!sendaria] run function race:checkpoints/verify/sendaria
execute in minecraft:overworld positioned 615 113 -3165 as @a[distance=..1,tag=!ardoniCemetery] run function race:checkpoints/verify/ardonicemetery
execute in minecraft:overworld positioned 1569 85 -3202 as @a[distance=..1,tag=!nestoria] run function race:checkpoints/verify/nestoria
execute in minecraft:overworld positioned -16 78 -4704 as @a[distance=..1,tag=!galePoint] if score @s checkpoints >= #max checkpoints run function race:checkpoints/galepoint
execute in minecraft:overworld positioned -16 78 -4704 as @a[distance=..1,tag=!galePoint] if score @s checkpoints < #max checkpoints run function race:checkpoints/notfinished