# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -3486 29 1272
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -1376, 79, -186]}},custom_name={"text":"☆ Redstone Academy ☆","color":"gold","italic":false}]

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #mtTempus checkpoints matches 1.. run function race:items/mttempus

# Tags and Scoreboards
scoreboard players set #mtTempus checkpoints 1
tag @s add mtTempus

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
#tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[Mt Tempus]","color":"green","hover_event":{"action":"show_text","value":{"text":"Reach Mt Tempus","color":"green"}}}]
advancement grant @s only race:mttempus
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
execute unless score #mode gamemode matches 2 run effect give @a[tag=!mtTempus] speed 40 1 false
execute if score #mode gamemode matches 2 run effect give @a[tag=!mtTempus] luck 40 0 true