# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -3805 102 -63
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -3416, 80, 385]}},custom_name={"text":"☆ Fort Zuka ☆","color":"gold","italic":false}]

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
execute unless score #felora checkpoints matches 1.. run function race:checkpoints/items/felora

# Tags and Scoreboards
scoreboard players set #felora checkpoints 1
tag @s add felora

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
#tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[Felora]","color":"green","hover_event":{"action":"show_text","value":{"text":"Reach Felora","color":"green"}}}]
advancement grant @s only race:felora
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
execute unless score #mode gamemode matches 2 run effect give @a[tag=!felora] speed 40 1 false
execute if score #mode gamemode matches 2 run effect give @a[tag=!felora] luck 20 0 true