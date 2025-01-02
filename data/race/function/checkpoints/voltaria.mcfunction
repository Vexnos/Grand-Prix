# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -1528 79 -2459
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -1152, 117, -2990]}},custom_name='{"text":"☆ Voltaria ☆","color":"gold","italic":false}']

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #checkpoint voltaria matches 1.. run function race:items/voltaria

# Tags and Scoreboards
scoreboard players set #checkpoint voltaria 1
tag @s add voltaria

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached Voltaria!","color":"gold"}]
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

