# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -1376 81 -186
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass
give @s compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -703, 82, -178]}},custom_name='{"text":"☆ The Vault ☆","color":"gold","italic":false}']

# Checkpoint score
scoreboard players add @s checkpoints 1

# Surplus Items
# execute unless score #checkpoint redstoneAcademy matches 1.. run function race:items/redstoneacademy

# Tags and Scoreboards
scoreboard players set #checkpoint redstoneAcademy 1
tag @s add redstoneAcademy

# Titles
title @s actionbar {"text":"Checkpoint!","color":"green"}
tellraw @a [{"selector":"@s","color":"dark_green"},{"text":" has reached the Redstone Academy!","color":"gold"}]
advancement grant @s only race:redstoneacademy
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s

# Catchup
effect give @a[tag=!redstoneAcademy] speed 40 1 false