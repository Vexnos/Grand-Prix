# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -703 99 579
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -21, 197, 894]}},custom_name={"text":"☆ Mt Velgrin ☆","color":"gold","italic":false}]

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
execute unless score #crownPeak checkpoints matches 1.. run function race:checkpoints/items/crownpeak

# Tags and Scoreboards
scoreboard players set #crownPeak checkpoints 1
tag @s add crownPeak

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
#tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[Crown Peak]","color":"green","hover_event":{"action":"show_text","value":{"text":"Reach Crown Peak","color":"green"}}}]
advancement grant @s only race:crownpeak
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
execute unless score #mode gamemode matches 2 run effect give @a[tag=!crownPeak] speed 40 1 false
execute if score #mode gamemode matches 2 run effect give @a[tag=!crownPeak] luck 20 0 true