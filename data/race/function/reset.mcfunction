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
tag @a remove hailstone
tag @a remove northwindPass
tag @a remove ardoniArena
tag @a remove kaltaria
tag @a remove voltaria
tag @a remove oakendale
tag @a remove etherea
tag @a remove felora
tag @a remove fortZuka
tag @a remove redstoneAcademy
tag @a remove nazgard
tag @a remove vault
tag @a remove theEnd
tag @a remove crownPeak
tag @a remove mtVelgrin
tag @a remove tartarus
tag @a remove meridian
tag @a remove amaria
tag @a remove hyperia
tag @a remove ataraxia
tag @a remove biggerton
tag @a remove sendaria
tag @a remove ardoniCemetery
tag @a remove nestoria
tag @a remove galePoint
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