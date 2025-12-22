# Teams
team leave @a
team join be_nice @a

# Gamemode
gamemode adventure @a

# Time
time set 0

# TP all players
tp @a -302 119 -4283

# Spawn
setworldspawn -302 119 -4283
spawnpoint @a -302 119 -4283

# Clear The Timer Schedule
schedule clear race:timer

# Scoreboards
scoreboard players set @a checkpoints 0
scoreboard objectives setdisplay list checkpoints
scoreboard players set #hailstone checkpoints 0
scoreboard players set #northwindPass checkpoints 0
scoreboard players set #ardoniArena checkpoints 0
scoreboard players set #kaltaria checkpoints 0
scoreboard players set #voltaria checkpoints 0
scoreboard players set #oakendale checkpoints 0
scoreboard players set #etherea checkpoints 0
scoreboard players set #felora checkpoints 0
scoreboard players set #fortZuka checkpoints 0
scoreboard players set #redstoneAcademy checkpoints 0
scoreboard players set #nazgard checkpoints 0
scoreboard players set #vault checkpoints 0
scoreboard players set #theEnd checkpoints 0
scoreboard players set #crownPeak checkpoints 0
scoreboard players set #mtVelgrin checkpoints 0
scoreboard players set #tartarus checkpoints 0
scoreboard players set #meridian checkpoints 0
scoreboard players set #amaria checkpoints 0
scoreboard players set #hyperia checkpoints 0
scoreboard players set #ataraxia checkpoints 0
scoreboard players set #biggerton checkpoints 0
scoreboard players set #sendaria checkpoints 0
scoreboard players set #ardoniCemetery checkpoints 0
scoreboard players set #nestoria checkpoints 0
scoreboard players set #galePoint checkpoints 0
scoreboard players set #seconds timer 0
scoreboard players set #minutes timer 0
scoreboard players set #hours timer 0
scoreboard players set @a deaths 0
scoreboard players set #players players 0

# Reset Tags
tag @e remove hailstone
tag @e remove northwindPass
tag @e remove ardoniArena
tag @e remove kaltaria
tag @e remove voltaria
tag @e remove oakendale
tag @e remove etherea
tag @e remove felora
tag @e remove fortZuka
tag @e remove redstoneAcademy
tag @e remove nazgard
tag @e remove vault
tag @e remove theEnd
tag @e remove crownPeak
tag @e remove mtVelgrin
tag @e remove tartarus
tag @e remove meridian
tag @e remove amaria
tag @e remove hyperia
tag @e remove ataraxia
tag @e remove biggerton
tag @e remove sendaria
tag @e remove ardoniCemetery
tag @e remove nestoria
tag @e remove galePoint
tag @a remove president
tag @a remove bodyguard
tag @a remove horse_name

# Gamerules
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule randomTickSpeed 0
gamerule doMobSpawning false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule mobGriefing false
gamerule fallDamage false
gamerule doTraderSpawning false
gamerule doPatrolSpawning false
gamerule locatorBar false

# Reset all Advancements
advancement revoke @a everything

# Remove all XP
xp set @a 0 levels
xp set @a 0 points

# Effects
effect clear @a
effect give @a saturation infinite 0 true
effect give @a regeneration infinite 1 true

# Clear Inventories
clear @a

# Kill skeleton horses
kill @e[type=skeleton_horse]

# Kill rogue items
kill @e[type=item]

# Difficulty Peaceful
difficulty peaceful

# Worldborder
worldborder center -283 -4264
worldborder set 100