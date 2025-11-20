function race:checkpoints/checkpoints
execute if score #teamsEnabled teamsEnabled matches 1 run function race:deaths/president
execute if score #teamsEnabled teamsEnabled matches 1 run function race:deaths/bodyguard