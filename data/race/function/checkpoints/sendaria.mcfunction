# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -193 99 -2383
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; 615, 111, -3165]}},custom_name={"text":"☆ Ardoni Cemetary ☆","color":"gold","italic":false}]

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #checkpoint sendaria matches 1.. run function race:items/sendaria

# Tags and Scoreboards
scoreboard players set #checkpoint sendaria 1
tag @s add sendaria

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
#tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[Sendaria]","color":"green","hover_event":{"action":"show_text","value":{"text":"Reach Sendaria","color":"green"}}}]
advancement grant @s only race:sendaria
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!sendaria] speed 40 1 false