# function race:checkpoints/safezones
execute if score #mode gamemode matches 1 run effect give @a[tag=president] glowing infinite 0 true
execute if score #startline phase matches 1 run effect give @a saturation infinite 0 true
execute if score #startline phase matches 1 run effect give @a regeneration infinite 1 true

# Loop the function
schedule function race:main_10t 10t