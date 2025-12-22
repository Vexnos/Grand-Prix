# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -703 84 -178
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -495, 101, -221]}},custom_name={"text":"☆ Nether Portal ☆","color":"dark_red","italic":false}]
give @s compass[lodestone_tracker={target:{dimension:"the_nether",pos:[I; -376, 56, -1089]}},custom_name={"text":"☆ Nazgard ☆","color":"dark_red","italic":false}]

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #vault checkpoints matches 1.. run function race:items/vault

# Tags and Scoreboards
scoreboard players set #vault checkpoints 1
tag @s add vault

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
#tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached ","color":"gold"},{"text":"[The Vault]","color":"green","hover_event":{"action":"show_text","value":{"text":"Reach the Vault","color":"green"}}}]
advancement grant @s only race:vault
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!vault] speed 40 1 false
execute if score #mode gamemode matches 2 at @s as @e[type=skeleton_horse,sort=nearest,limit=1] run tag @s add vault
execute if score #mode gamemode matches 2 run effect give @e[type=skeleton_horse,tag=!vault] speed 40 1 false