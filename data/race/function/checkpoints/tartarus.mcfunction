# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -55 51 2470
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; 61, 83, 4605]}},custom_name={"text":"☆ Meridian ☆","color":"gold","italic":false}]

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
execute unless score #checkpoint tartarus matches 1.. run function race:items/tartarus

# Tags and Scoreboards
scoreboard players set #checkpoint tartarus 1
tag @s add tartarus

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
#tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[Tartarus]","color":"green","hover_event":{"action":"show_text","value":{"text":"Reach Tartarus","color":"green"}}}]
advancement grant @s only race:tartarus
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!tartarus] speed 40 1 false