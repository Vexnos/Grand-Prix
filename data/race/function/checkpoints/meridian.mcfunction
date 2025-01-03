# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s 61 85 4605
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; 1569, 105, 1199]}},custom_name='{"text":"☆ Amaria ☆","color":"gold","italic":false}']

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
execute unless score #checkpoint meridian matches 1.. run function race:items/meridian

# Tags and Scoreboards
scoreboard players set #checkpoint meridian 1
tag @s add meridian

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached Meridian!","color":"gold"}]
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!meridian] speed 40 1 false