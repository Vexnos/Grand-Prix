# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s 615 113 -3165
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; 1569, 83, -3202]}},custom_name={"text":"☆ Nestoria ☆","color":"gold","italic":false}]

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
execute unless score #ardoniCemetery checkpoints matches 1.. run function race:items/ardonicemetery

# Tags and Scoreboards
scoreboard players set #ardoniCemetery checkpoints 1
tag @s add ardoniCemetery

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
#tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[The Ardoni Cemetery]","color":"green","hover_event":{"action":"show_text","value":{"text":"Reach the Ardoni Cemetery","color":"green"}}}]
advancement grant @s only race:ardonicemetery
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
execute unless score #mode gamemode matches 2 run effect give @a[tag=!ardoniCemetery] speed 40 1 false
execute if score #mode gamemode matches 2 run effect give @a[tag=!ardoniCemetery] luck 40 0 true