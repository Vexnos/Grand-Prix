# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s 61 85 4605
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; 1569, 105, 1199]}},custom_name={"text":"☆ Amaria ☆","color":"gold","italic":false}]

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
execute unless score #meridian checkpoints matches 1.. run function race:items/meridian

# Tags and Scoreboards
scoreboard players set #meridian checkpoints 1
tag @s add meridian

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
#tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[Meridian]","color":"green","hover_event":{"action":"show_text","value":{"text":"Reach Meridian","color":"green"}}}]
advancement grant @s only race:meridian
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!meridian] speed 40 1 false
execute if score #mode gamemode matches 2 at @s as @e[type=skeleton_horse,sort=nearest,limit=1] run tag @s add meridian
execute if score #mode gamemode matches 2 run effect give @e[type=skeleton_horse,tag=!meridian] speed 40 1 false