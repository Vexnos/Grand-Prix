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
gamerule keep_inventory true
gamerule immediate_respawn true
gamerule random_tick_speed 0
gamerule spawn_mobs false
gamerule spawn_monsters false
gamerule advance_time false
gamerule advance_weather false
gamerule mob_griefing false
gamerule fall_damage false
gamerule spawn_wandering_traders false
gamerule spawn_patrols false
gamerule locator_bar false
gamerule allow_entering_nether_using_portals false
gamerule players_nether_portal_default_delay 1200
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