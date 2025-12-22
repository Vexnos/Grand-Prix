# Set Spawnpoint

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -572, 77, 96]}},custom_name={"text":"☆ End Portal ☆","color":"dark_purple","italic":false}]
give @s compass[lodestone_tracker={target:{dimension:"the_end",pos:[I; -1113, 53, -472]}},custom_name={"text":"☆ The End ☆","color":"dark_purple","italic":false}]

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
execute unless score #nazgard checkpoints matches 1.. run function race:items/nazgard

# Tags and Scoreboards
scoreboard players set #nazgard checkpoints 1
tag @s add nazgard

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
#tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[Nazgard]","color":"green","hover_event":{"action":"show_text","value":{"text":"Reach Nazgard","color":"green"}}}]
advancement grant @s only race:nazgard
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!nazgard] speed 40 1 false