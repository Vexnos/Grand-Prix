# Teams
team leave @a

# Gamemode
gamemode adventure @a

# Time
time set 0

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
function race:resetcheckpoints

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
gamerule playersNetherPortalDefaultDelay 1200
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

# Teleport Players and set Worldborder
function race:start/worldborder