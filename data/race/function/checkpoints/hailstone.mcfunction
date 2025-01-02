# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -734 133 -4043

# Compasses
# Give Northwind Pass Compass

# Checkpoint score
scoreboard players add @s checkpoints 1

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached Hailstone!","color":"gold"}]
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Surplus Items
execute unless score #checkpoint hailstone matches 1.. run function race:items/hailstone

# Tags and Scoreboards
scoreboard players set #checkpoint hailstone 1
tag @s add hailstone