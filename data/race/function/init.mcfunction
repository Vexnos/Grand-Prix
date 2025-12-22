# Teams
team add be_nice "Be Nice"
team modify be_nice collisionRule never
team modify be_nice friendlyFire false

team add blue "Blue"
team modify blue friendlyFire true
team modify blue color blue

team add red "Red"
team modify red friendlyFire true
team modify red color red

team add yellow "Yellow"
team modify yellow friendlyFire true
team modify yellow color yellow

team add green "Green"
team modify green friendlyFire true
team modify green color green

# Horse Teams (Up to 8 Players)
team add 1
team modify 1 friendlyFire false
team modify 1 color blue

team add 2
team modify 2 friendlyFire false
team modify 2 color red

team add 3
team modify 3 friendlyFire false
team modify 3 color yellow

team add 4
team modify 4 friendlyFire false
team modify 4 color green

team add 5
team modify 5 friendlyFire false
team modify 5 color gold

team add 6
team modify 6 friendlyFire false
team modify 6 color aqua

team add 7
team modify 7 friendlyFire false
team modify 7 color black

team add 8
team modify 8 friendlyFire false
team modify 8 color light_purple

# Scoreboards
scoreboard objectives add checkpoints dummy
scoreboard objectives add health health {"text":"❤","color":"red"}
scoreboard objectives add countdown dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add timer dummy
scoreboard objectives add gamemode dummy
scoreboard objectives add players dummy
scoreboard objectives add start trigger
scoreboard objectives setdisplay below_name health
scoreboard players set #max checkpoints 24
scoreboard players set #countdown countdown 0

# Main
function race:main_10t