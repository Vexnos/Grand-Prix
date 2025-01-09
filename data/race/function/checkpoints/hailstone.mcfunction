# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -734 133 -4043
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -22, 174, -3419]}},custom_name='{"text":"☆ Northwind Pass ☆","color":"gold","italic":false}']

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
execute unless score #checkpoint hailstone matches 1.. run function race:items/hailstone

# Tags and Scoreboards
scoreboard players set #checkpoint hailstone 1
tag @s add hailstone

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached Hailstone!","color":"gold"}]
advancement grant @s only race:hailstone
execute as @s at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!hailstone] speed 40 1 false