# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -1946 168 -967
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -3805, 100, -63]}},custom_name='{"text":"☆ Felora ☆","color":"gold","italic":false}']

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #checkpoint etherea matches 1.. run function race:items/etherea

# Tags and Scoreboards
scoreboard players set #checkpoint etherea 1
tag @s add etherea

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached Etherea!","color":"gold"}]
advancement grant @s only race:etherea
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!etherea] speed 40 1 false