# Gamemode
gamemode survival @a

# Gamerules
gamerule doMobSpawning true
gamerule doDaylightCycle true
gamerule doWeatherCycle true

# Worldborder
worldborder center 0 0
worldborder set 10000

# Clear Effects
effect clear @a

# Inventory
clear @a
give @a simple_backpack:backpack

# Titles
title @a title {"text":"GO!","color":"green","bold":true}
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s

# Leave Team 
team leave @a