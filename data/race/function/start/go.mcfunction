# Gamemode
gamemode survival @a

# Gamerules
gamerule doMobSpawning true
gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule fallDamage true
gamerule doTraderSpawning true
gamerule doPatrolSpawning true

# Worldborder
worldborder center 0 0
worldborder set 10000

# Clear Effects
effect clear @a

# Inventory
clear @a
give @a compass[lodestone_tracker={target:{dimension:"overworld",pos:[I; -735, 130, -4042]}},custom_name={"text":"☆ Hailstone ☆","color":"gold","italic":false}]

# Titles
title @a title {"text":"GO!","color":"green","bold":true}
execute as @a at @s run playsound minecraft:item.goat_horn.sound.0 master @s
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s

# Leave Team 
team leave @a

# Difficulty to Hard
difficulty hard

# Start the Timer
function race:timer