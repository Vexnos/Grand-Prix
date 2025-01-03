# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -396 100 -1376
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -193, 97, -2383]}},custom_name='{"text":"☆ Sendaria ☆","color":"gold","italic":false}']

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #checkpoint biggerton matches 1.. run function race:items/biggerton

# Tags and Scoreboards
scoreboard players set #checkpoint biggerton 1
tag @s add biggerton

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached Biggerton!","color":"gold"}]
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!biggerton] speed 40 1 false