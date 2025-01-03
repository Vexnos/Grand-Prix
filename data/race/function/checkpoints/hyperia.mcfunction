# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s 1842 109 -289
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; 98, 168, -618]}},custom_name='{"text":"☆ Ataraxia ☆","color":"gold","italic":false}']

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
execute unless score #checkpoint hyperia matches 1.. run function race:items/hyperia

# Tags and Scoreboards
scoreboard players set #checkpoint hyperia 1
tag @s add hyperia

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached Hyperia!","color":"gold"}]
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!hyperia] speed 40 1 false