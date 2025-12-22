# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -1291 90 -1302
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -1946, 166, -967]}},custom_name={"text":"☆ Etherea ☆","color":"gold","italic":false}]

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
execute unless score #oakendale checkpoints matches 1.. run function race:items/oakendale

# Tags and Scoreboards
scoreboard players set #oakendale checkpoints 1
tag @s add oakendale

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
#tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[Oakendale]","color":"green","hover_event":{"action":"show_text","value":{"text":"Reach Oakendale","color":"green"}}}]
advancement grant @s only race:oakendale
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!oakendale] speed 40 1 false