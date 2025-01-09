# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -22 174 -3419
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -551, 59, -3363]}},custom_name='{"text":"☆ Ardoni Arena ☆","color":"gold","italic":false}']

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
execute unless score #checkpoint northwindPass matches 1.. run function race:items/northwindpass

# Tags and Scoreboards
scoreboard players set #checkpoint northwindPass 1
tag @s add northwindPass

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached Northwind Pass!","color":"gold"}]
advancement grant @s only race:northwindpass
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!northwindPass] speed 40 1 false