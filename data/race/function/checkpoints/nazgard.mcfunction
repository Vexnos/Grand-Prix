# Set Spawnpoint

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -572, 77, 96]}},custom_name='{"text":"☆ End Portal ☆","color":"dark_purple","italic":false}']
give @s compass[lodestone_tracker={target:{dimension:"the_end",pos:[I; -1113, 53, -472]}},custom_name='{"text":"☆ The End ☆","color":"dark_purple","italic":false}']

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #checkpoint nazgard matches 1.. run function race:items/nazgard

# Tags and Scoreboards
scoreboard players set #checkpoint nazgard 1
tag @s add nazgard

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached Nazgard!","color":"gold"}]
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s