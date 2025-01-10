# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s 98 170 -618
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -396, 98, -1376]}},custom_name='{"text":"☆ Biggerton ☆","color":"gold","italic":false}']

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #checkpoint ataraxia matches 1.. run function race:items/ataraxia

# Tags and Scoreboards
scoreboard players set #checkpoint ataraxia 1
tag @s add ataraxia

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[Ataraxia]","color":"green","hoverEvent":{"action":"show_text","contents":{"text":"Reach Ataraxia","color":"green"}}}]
advancement grant @s only race:ataraxia
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!ataraxia] speed 40 1 false