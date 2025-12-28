# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s 98 170 -618
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -396, 98, -1376]}},custom_name={"text":"☆ Biggerton ☆","color":"gold","italic":false}]

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #ataraxia checkpoints matches 1.. run function race:checkpoints/items/ataraxia

# Tags and Scoreboards
scoreboard players set #ataraxia checkpoints 1
tag @s add ataraxia

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
#tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[Ataraxia]","color":"green","hover_event":{"action":"show_text","value":{"text":"Reach Ataraxia","color":"green"}}}]
advancement grant @s only race:ataraxia
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
execute unless score #mode gamemode matches 2 run effect give @a[tag=!ataraxia] speed 40 1 false
execute if score #mode gamemode matches 2 run effect give @a[tag=!ataraxia] luck 20 0 true