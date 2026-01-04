# Teams Mode
execute if score #mode gamemode matches 1 unless entity @a[team=blue] run function race:start/teams
execute if score #mode gamemode matches 4 unless entity @a[team=blue] run function race:start/teams

# Horse Mode
execute if score #mode gamemode matches 2 unless entity @a[team=1] run function race:start/spawn_horses

# Nautilus Mode
# execute if score #mode gamemode matches 3 run function race:start/spawn_nautili

# Camel Mode
execute if score #mode gamemode matches 4 run function race:start/spawn_camels

# Start the countdown
scoreboard players set @a deaths 0
scoreboard players set #startline phase 0
scoreboard players set #countdown countdown 5
function race:start/countdown