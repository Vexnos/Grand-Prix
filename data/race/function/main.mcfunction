function race:checkpoints
execute if score #mode gamemode matches 1 run function race:deaths/president
execute if score #mode gamemode matches 1 run function race:deaths/bodyguard

# Enable start trigger
scoreboard players enable @a[tag=admin] start
execute as @a[tag=admin,scores={start=1..}] run function race:start/start_trigger

# Portals
function race:portals

# Regen and Saturation during the Pre-Race phase
execute if score #startline phase matches 1 as @a[scores={deaths=1..}] run function race:start/effects

# Give speed to every horse for their rider having the luck effect
execute if score #mode gamemode matches 2 as @a[predicate=race:has_luck] at @s run effect give @e[type=skeleton_horse,sort=nearest,limit=1] speed 1 0 false