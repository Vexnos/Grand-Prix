# Teams
team add 1 "Be Nice"
team modify 1 collisionRule never
team modify 1 friendlyFire false

# Scoreboards
scoreboard objectives add checkpoints dummy
scoreboard objectives add health health {"text":"❤","color":"red"}
scoreboard objectives add hailstone dummy
scoreboard objectives add northwindPass dummy
scoreboard objectives add ardoniArena dummy
scoreboard objectives add kaltaria dummy
scoreboard objectives add voltaria dummy
scoreboard objectives add oakendale dummy
scoreboard objectives add etherea dummy
scoreboard objectives add felora dummy
scoreboard objectives add fortZuka dummy
scoreboard objectives add redstoneAcademy dummy
scoreboard objectives add nazgard dummy
scoreboard objectives add vault dummy
scoreboard objectives add theEnd dummy
scoreboard objectives add crownPeak dummy
scoreboard objectives add mtVelgrin dummy
scoreboard objectives add tartarus dummy
scoreboard objectives add meridian dummy
scoreboard objectives add amaria dummy
scoreboard objectives add hyperia dummy
scoreboard objectives add ataraxia dummy
scoreboard objectives add biggerton dummy
scoreboard objectives add sendaria dummy
scoreboard objectives add ardoniCemetery dummy
scoreboard objectives add nestoria dummy
scoreboard objectives add galePoint dummy
scoreboard objectives add countdown dummy
scoreboard objectives setdisplay below_name health
scoreboard players set #max checkpoints 24
scoreboard players set #countdown countdown 0

# Main
function race:main_10t