# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -551 61 -3363
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -1152, 117, -2990]}},custom_name='{"text":"☆ Kaltaria ☆","color":"gold","italic":false}']

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #checkpoint ardoniArena matches 1.. run function race:items/ardoniarena

# Tags and Scoreboards
scoreboard players set #checkpoint ardoniArena 1
tag @s add ardoniArena

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached the Tournament Arena!","color":"gold"}]
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!ardoniArena] speed 40 1 false