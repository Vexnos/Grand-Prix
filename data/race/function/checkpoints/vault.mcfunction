# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -703 84 -178
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -495, 101, -221]}},custom_name='{"text":"☆ Nether Portal ☆","color":"dark_red","italic":false}']
give @s compass[lodestone_tracker={target:{dimension:"the_nether",pos:[I; -376, 56, -1089]}},custom_name='{"text":"☆ Nazgard ☆","color":"dark_red","italic":false}']

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #checkpoint vault matches 1.. run function race:items/vault

# Tags and Scoreboards
scoreboard players set #checkpoint vault 1
tag @s add vault

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached the Vault!","color":"gold"}]
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!vault] speed 40 1 false