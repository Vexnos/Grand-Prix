# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -1152 119 -2990
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -1528, 77, -2459]}},custom_name='{"text":"☆ Voltaria ☆","color":"gold","italic":false}']

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
execute unless score #checkpoint kaltaria matches 1.. run function race:items/kaltaria

# Tags and Scoreboards
scoreboard players set #checkpoint kaltaria 1
tag @s add kaltaria

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[Kaltaria]","color":"green","hoverEvent":{"action":"show_text","contents":{"text":"Reach Kaltaria","color":"green"}}}]
advancement grant @s only race:kaltaria
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!kaltaria] speed 40 1 false