# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -1946 168 -967
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -3805, 100, -63]}},custom_name={"text":"☆ Felora ☆","color":"gold","italic":false}]

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #etherea checkpoints matches 1.. run function race:items/etherea

# Tags and Scoreboards
scoreboard players set #etherea checkpoints 1
tag @s add etherea

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
#tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[Etherea]","color":"green","hover_event":{"action":"show_text","value":{"text":"Reach Etherea","color":"green"}}}]
advancement grant @s only race:etherea
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!etherea] speed 40 1 false
execute if score #mode gamemode matches 2 at @s as @e[type=skeleton_horse,sort=nearest,limit=1] run tag @s add etherea
execute if score #mode gamemode matches 2 run effect give @e[type=skeleton_horse,tag=!etherea] speed 40 1 false