# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -21 199 894
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -55, 49, 2470]}},custom_name={"text":"☆ Tartarus ☆","color":"gold","italic":false}]

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #checkpoint mtVelgrin matches 1.. run function race:items/mtvelgrin

# Tags and Scoreboards
scoreboard players set #checkpoint mtVelgrin 1
tag @s add mtVelgrin

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[Mt Velgrin]","color":"green","hover_event":{"action":"show_text","value":{"text":"Reach Mt Velgrin","color":"green"}}}]
advancement grant @s only race:mtvelgrin
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!mtVelgrin] speed 40 1 false