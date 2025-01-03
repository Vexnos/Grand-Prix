# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -3805 102 -63
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -3416, 80, 385]}},custom_name='{"text":"☆ Fort Zuka ☆","color":"gold","italic":false}']

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
execute unless score #checkpoint felora matches 1.. run function race:items/felora

# Tags and Scoreboards
scoreboard players set #checkpoint felora 1
tag @s add felora

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached Felora!","color":"gold"}]
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s