execute unless score #teamsEnabled teamsEnabled matches 1 run team leave @a
execute if score #teamsEnabled teamsEnabled matches 1 unless entity @a[team=blue] run function race:start/teams
scoreboard players set #countdown countdown 3
function race:start/countdown