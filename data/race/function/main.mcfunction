function race:checkpoints
execute if score #mode gamemode matches 1 run function race:deaths/death
execute if score #mode gamemode matches 4 run function race:deaths/death

# Enable start trigger
scoreboard players enable @a[tag=admin] start
execute as @a[tag=admin,scores={start=1..}] run function race:start/start_trigger

# Portals
function race:portals

# Camels
function race:president/camels

# Give speed to every horse for their rider having the luck effect
execute if score #mode gamemode matches 2 as @a[predicate=race:has_luck] at @s run effect give @e[type=skeleton_horse,sort=nearest,limit=1] speed 1 0 false
# execute if score #mode gamemode matches 3 as @a[predicate=race:has_luck] at @s run effect give @e[type=nautilus,sort=nearest,limit=1] speed 1 0 false
execute if score #mode gamemode matches 4 as @a[predicate=race:has_luck] at @s run effect give @e[type=camel,sort=nearest,limit=1] speed 1 0 false