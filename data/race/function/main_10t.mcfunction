# function race:checkpoints/safezones
execute if score #teamsEnabled teamsEnabled matches 1 run effect give @a[tag=president] glowing infinite 0 true

# Loop the function
schedule function race:main_10t 10t