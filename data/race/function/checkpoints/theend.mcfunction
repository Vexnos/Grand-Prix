# Set Spawnpoint

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -703, 97, 579]}},custom_name={"text":"☆ Crown Peak ☆","color":"gold","italic":false}]

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #checkpoint theEnd matches 1.. run function race:items/theend

# Tags and Scoreboards
scoreboard players set #checkpoint theEnd 1
tag @s add theEnd

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
#tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[The End]","color":"green","hover_event":{"action":"show_text","value":{"text":"Reach The End","color":"green"}}}]
advancement grant @s only race:theend
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!theEnd] speed 40 1 false