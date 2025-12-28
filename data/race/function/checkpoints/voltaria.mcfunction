# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -1528 79 -2459
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -1291, 88, -1302]}},custom_name={"text":"☆ Oakendale ☆","color":"gold","italic":false}]

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #voltaria checkpoints matches 1.. run function race:checkpoints/items/voltaria

# Tags and Scoreboards
scoreboard players set #voltaria checkpoints 1
tag @s add voltaria

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
#tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[Voltaria]","color":"green","hover_event":{"action":"show_text","value":{"text":"Reach Voltaria","color":"green"}}}]
advancement grant @s only race:voltaria
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
execute unless score #mode gamemode matches 2 run effect give @a[tag=!voltaria] speed 40 1 false
execute if score #mode gamemode matches 2 run effect give @a[tag=!voltaria] luck 20 0 true