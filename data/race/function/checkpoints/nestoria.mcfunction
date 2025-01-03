# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s 1569 85 -3202
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -703, 82, -178]}},custom_name='{"text":"☆ Gale Point ☆","color":"gold","italic":false}']

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #checkpoint nestoria matches 1.. run function race:items/nestoria

# Tags and Scoreboards
scoreboard players set #checkpoint nestoria 1
tag @s add nestoria

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached Nestoria!","color":"gold"}]
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s