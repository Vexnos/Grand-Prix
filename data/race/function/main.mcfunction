function race:checkpoints/checkpoints
execute if score #mode gamemode matches 1 run function race:deaths/president
execute if score #mode gamemode matches 1 run function race:deaths/bodyguard

# Enable start trigger
scoreboard players enable @a[tag=admin] start
execute as @a[tag=admin,scores={start=1..}] run function race:start/start_trigger

# Portals
function race:portals