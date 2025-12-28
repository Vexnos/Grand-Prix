# Teams
team leave @a

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
scoreboard objectives setdisplay list checkpoints
scoreboard players set #seconds timer 0
scoreboard players set #minutes timer 0
scoreboard players set #hours timer 0
scoreboard players set @a deaths 0
scoreboard players set #players players 0
scoreboard players set #startline phase 1

# Reset Tags
tag @a remove president
tag @a remove bodyguard
tag @a remove horse_name

# Reset Checkpoints
function race:debug/resetcheckpoints

# Gamerules
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule randomTickSpeed 0
gamerule doMobSpawning false
gamerule spawnMonsters false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule mobGriefing false
gamerule fallDamage false
gamerule doTraderSpawning false
gamerule doPatrolSpawning false
gamerule locatorBar false
gamerule allowEnteringNetherUsingPortals false
gamerule pvp false

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

# Worldborder
worldborder center -283 -4264
worldborder set 100