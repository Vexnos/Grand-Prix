# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -3416 82 385
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -1376, 79, -186]}},custom_name='{"text":"☆ Redstone Academy ☆","color":"gold","italic":false}']

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #checkpoint fortZuka matches 1.. run function race:items/fortzuka

# Tags and Scoreboards
scoreboard players set #checkpoint fortZuka 1
tag @s add fortZuka

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"Fort Zuka!","color":"green"}]
advancement grant @s only race:fortzuka
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!fortZuka] speed 40 1 false