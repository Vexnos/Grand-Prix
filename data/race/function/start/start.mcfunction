# Teams Mode
execute unless score #mode gamemode matches 1 run team leave @a
execute if score #mode gamemode matches 1 unless entity @a[team=blue] run function race:start/teams

# Horse Mode
execute if score #mode gamemode matches 2 unless entity @a[team=1] run function race:start/spawn_horses

# Start the countdown
scoreboard players set #countdown countdown 3
function race:start/countdown