# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -16 78 -4704
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass

# Checkpoint score
# scoreboard players add @s checkpoints 1

# Surplus Items

# Tags and Scoreboards
scoreboard players set #checkpoint galePoint 1
tag @s add galePoint

# Titles
title @a title [{"selector":"@s","color":"dark_green"},{"text":" has Finished!","color":"gold"}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s