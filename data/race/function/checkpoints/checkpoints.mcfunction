# Normal & President Modes Checkpoints
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -735 132 -4042 as @a[distance=..2,tag=!hailstone,tag=!bodyguard] run function race:checkpoints/hailstone
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -22 176 -3419 as @a[distance=..2,tag=!northwindPass,tag=!bodyguard] run function race:checkpoints/verify/northwindpass
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -551 61 -3363 as @a[distance=..2,tag=!ardoniArena,tag=!bodyguard] run function race:checkpoints/verify/ardoniarena
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -1152 119 -2990 as @a[distance=..2,tag=!kaltaria,tag=!bodyguard] run function race:checkpoints/verify/kaltaria
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -1528 79 -2459 as @a[distance=..2,tag=!voltaria,tag=!bodyguard] run function race:checkpoints/verify/voltaria
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -1291 90 -1302 as @a[distance=..2,tag=!oakendale,tag=!bodyguard] run function race:checkpoints/verify/oakendale
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -1946 168 -967 as @a[distance=..2,tag=!etherea,tag=!bodyguard] run function race:checkpoints/verify/etherea
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -3805 102 -63 as @a[distance=..2,tag=!felora,tag=!bodyguard] run function race:checkpoints/verify/felora
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -3416 82 385 as @a[distance=..2,tag=!fortZuka,tag=!bodyguard] run function race:checkpoints/verify/fortzuka
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -1376 81 -186 as @a[distance=..2,tag=!redstoneAcademy,tag=!bodyguard] run function race:checkpoints/verify/redstoneacademy
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -703 84 -178 as @a[distance=..2,tag=!vault,tag=!bodyguard] run function race:checkpoints/verify/vault
execute if score #mode gamemode matches 0..1 in minecraft:the_nether positioned -376 58 -1089 as @a[distance=..2,tag=!nazgard,tag=!bodyguard] run function race:checkpoints/verify/nazgard
execute if score #mode gamemode matches 0..1 in minecraft:the_end positioned -1113 55 -472 as @a[distance=..2,tag=!theEnd,tag=!bodyguard] run function race:checkpoints/verify/theend
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -703 99 579 as @a[distance=..2,tag=!crownPeak,tag=!bodyguard] run function race:checkpoints/verify/crownpeak
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -21 199 894 as @a[distance=..2,tag=!mtVelgrin,tag=!bodyguard] run function race:checkpoints/verify/mtvelgrin
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -55 51 2470 as @a[distance=..2,tag=!tartarus,tag=!bodyguard] run function race:checkpoints/verify/tartarus
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned 61 85 4605 as @a[distance=..2,tag=!meridian,tag=!bodyguard] run function race:checkpoints/verify/meridian
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned 1569 107 1199 as @a[distance=..2,tag=!amaria,tag=!bodyguard] run function race:checkpoints/verify/amaria
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned 1842 109 -289 as @a[distance=..2,tag=!hyperia,tag=!bodyguard] run function race:checkpoints/verify/hyperia
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned 98 170 -618 as @a[distance=..2,tag=!ataraxia,tag=!bodyguard] run function race:checkpoints/verify/ataraxia
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -396 100 -1376 as @a[distance=..2,tag=!biggerton,tag=!bodyguard] run function race:checkpoints/verify/biggerton
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -193 99 -2383 as @a[distance=..2,tag=!sendaria,tag=!bodyguard] run function race:checkpoints/verify/sendaria
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned 615 113 -3165 as @a[distance=..2,tag=!ardoniCemetery,tag=!bodyguard] run function race:checkpoints/verify/ardonicemetery
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned 1569 85 -3202 as @a[distance=..2,tag=!nestoria,tag=!bodyguard] run function race:checkpoints/verify/nestoria
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -16 78 -4704 as @a[distance=..2,tag=!galePoint,tag=!bodyguard] if score @s checkpoints >= #max checkpoints run function race:checkpoints/galepoint
execute if score #mode gamemode matches 0..1 in minecraft:overworld positioned -16 78 -4704 as @a[distance=..2,tag=!galePoint,tag=!bodyguard] if score @s checkpoints < #max checkpoints run function race:checkpoints/notfinished

# Horse Mode Checkpoints
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -735 132 -4042 as @a[distance=..2,tag=!hailstone,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/hailstone
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -22 176 -3419 as @a[distance=..2,tag=!northwindPass,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/northwindpass
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -551 61 -3363 as @a[distance=..2,tag=!ardoniArena,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/ardoniarena
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -1152 119 -2990 as @a[distance=..2,tag=!kaltaria,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/kaltaria
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -1528 79 -2459 as @a[distance=..2,tag=!voltaria,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/voltaria
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -1291 90 -1302 as @a[distance=..2,tag=!oakendale,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/oakendale
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -1946 168 -967 as @a[distance=..2,tag=!etherea,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/etherea
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -3805 102 -63 as @a[distance=..2,tag=!felora,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/felora
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -3416 82 385 as @a[distance=..2,tag=!fortZuka,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/fortzuka
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -1376 81 -186 as @a[distance=..2,tag=!redstoneAcademy,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/redstoneacademy
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -703 84 -178 as @a[distance=..2,tag=!vault,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/vault
execute if score #mode gamemode matches 2 in minecraft:the_nether positioned -376 58 -1089 as @a[distance=..2,tag=!nazgard,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/nazgard
execute if score #mode gamemode matches 2 in minecraft:the_end positioned -1113 55 -472 as @a[distance=..2,tag=!theEnd,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/theend
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -703 99 579 as @a[distance=..2,tag=!crownPeak,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/crownpeak
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -21 199 894 as @a[distance=..2,tag=!mtVelgrin,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/mtvelgrin
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -55 51 2470 as @a[distance=..2,tag=!tartarus,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/tartarus
execute if score #mode gamemode matches 2 in minecraft:overworld positioned 61 85 4605 as @a[distance=..2,tag=!meridian,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/meridian
execute if score #mode gamemode matches 2 in minecraft:overworld positioned 1569 107 1199 as @a[distance=..2,tag=!amaria,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/amaria
execute if score #mode gamemode matches 2 in minecraft:overworld positioned 1842 109 -289 as @a[distance=..2,tag=!hyperia,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/hyperia
execute if score #mode gamemode matches 2 in minecraft:overworld positioned 98 170 -618 as @a[distance=..2,tag=!ataraxia,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/ataraxia
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -396 100 -1376 as @a[distance=..2,tag=!biggerton,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/biggerton
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -193 99 -2383 as @a[distance=..2,tag=!sendaria,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/sendaria
execute if score #mode gamemode matches 2 in minecraft:overworld positioned 615 113 -3165 as @a[distance=..2,tag=!ardoniCemetery,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/ardonicemetery
execute if score #mode gamemode matches 2 in minecraft:overworld positioned 1569 85 -3202 as @a[distance=..2,tag=!nestoria,tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/nestoria
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -16 78 -4704 as @a[distance=..2,tag=!galePoint,tag=!bodyguard,predicate=race:is_riding_horse] if score @s checkpoints >= #max checkpoints run function race:checkpoints/galepoint
execute if score #mode gamemode matches 2 in minecraft:overworld positioned -16 78 -4704 as @a[distance=..2,tag=!galePoint,tag=!bodyguard,predicate=race:is_riding_horse] if score @s checkpoints < #max checkpoints run function race:checkpoints/notfinished