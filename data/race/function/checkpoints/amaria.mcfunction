# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s 1569 107 1199
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; 1842, 107, -289]}},custom_name='{"text":"☆ Hyperia ☆","color":"gold","italic":false}']

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #checkpoint amaria matches 1.. run function race:items/amaria

# Tags and Scoreboards
scoreboard players set #checkpoint amaria 1
tag @s add amaria

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[Amaria]","color":"green","hoverEvent":{"action":"show_text","contents":{"text":"Reach Amaria","color":"green"}}}]
advancement grant @s only race:amaria
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!amaria] speed 40 1 false