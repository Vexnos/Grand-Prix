# Teams
team join 1 @a

# Gamemode
gamemode adventure @a

# Effects
effect give @a saturation infinite 0 true
effect give @a regeneration infinite 1 true

# Time
time set 0

# TP all players
tp @a -302 119 -4283

# Spawn
setworldspawn -302 119 -4283
spawnpoint @a -302 119 -4283

# Scoreboards
scoreboard players set @a checkpoints 0
scoreboard objectives setdisplay list checkpoints
scoreboard players set #checkpoint hailstone 0
scoreboard players set #checkpoint northwindPass 0
scoreboard players set #checkpoint ardoniArena 0
scoreboard players set #checkpoint kaltaria 0
scoreboard players set #checkpoint voltaria 0
scoreboard players set #checkpoint oakendale 0
scoreboard players set #checkpoint etherea 0
scoreboard players set #checkpoint felora 0
scoreboard players set #checkpoint fortZuka 0
scoreboard players set #checkpoint redstoneAcademy 0
scoreboard players set #checkpoint nazgard 0
scoreboard players set #checkpoint vault 0
scoreboard players set #checkpoint theEnd 0
scoreboard players set #checkpoint crownPeak 0
scoreboard players set #checkpoint mtVelgrin 0
scoreboard players set #checkpoint tartarus 0
scoreboard players set #checkpoint meridian 0
scoreboard players set #checkpoint amaria 0
scoreboard players set #checkpoint hyperia 0
scoreboard players set #checkpoint ataraxia 0
scoreboard players set #checkpoint biggerton 0
scoreboard players set #checkpoint sendaria 0
scoreboard players set #checkpoint ardoniCemetery 0
scoreboard players set #checkpoint nestoria 0
scoreboard players set #checkpoint galePoint 0

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

# Gamerules
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule randomTickSpeed 0
gamerule doMobSpawning false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule mobGriefing false
gamerule fallDamage false

# Reset all Advancements
advancement revoke @a everything

# Remove all XP
xp set @a 0 levels
xp set @a 0 points

# Clear Inventories
clear @a

# Worldborder
worldborder center -302 -4283
worldborder set 61