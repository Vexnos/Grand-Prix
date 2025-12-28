# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -16 78 -4704
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass

# Checkpoint score
# scoreboard players add @s checkpoints 1

# Surplus Items

# Titles
execute unless score #galePoint checkpoints matches 1.. as @s run function race:finish/win
execute if score #galePoint checkpoints matches 1.. as @s run function race:finish/loser

execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s
advancement grant @s only race:galepoint

# Resistance
effect give @s resistance infinite 5 true

# Tags and Scoreboards
scoreboard players set #galePoint checkpoints 1
tag @s add galePoint