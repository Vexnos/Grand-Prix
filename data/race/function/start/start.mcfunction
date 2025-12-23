# Teams Mode
execute if score #mode gamemode matches 1 unless entity @a[team=blue] run function race:start/teams

# Horse Mode
execute if score #mode gamemode matches 2 unless entity @a[team=1] run function race:start/spawn_horses

# Start the countdown
scoreboard players set @a deaths 0
scoreboard players set #startline phase 0
scoreboard players set #countdown countdown 5
function race:start/countdown