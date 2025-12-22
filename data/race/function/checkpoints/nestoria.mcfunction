# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s 1569 85 -3202
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -16, 76, -4704]}},custom_name={"text":"☆ Gale Point ☆","color":"gold","italic":false}]

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #nestoria checkpoints matches 1.. run function race:items/nestoria

# Tags and Scoreboards
scoreboard players set #nestoria checkpoints 1
tag @s add nestoria

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
#tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[Nestoria]","color":"green","hover_event":{"action":"show_text","value":{"text":"Reach Nestoria","color":"green"}}}]
advancement grant @s only race:nestoria
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!nestoria] speed 40 1 false
execute if score #mode gamemode matches 2 at @s as @e[type=skeleton_horse,sort=nearest,limit=1] run tag @s add nestoria
execute if score #mode gamemode matches 2 run effect give @e[type=skeleton_horse,tag=!nestoria] speed 40 1 false