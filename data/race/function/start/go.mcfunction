# Gamemode
gamemode survival @a

# Gamerules
gamerule spawn_mobs true
gamerule spawn_monsters true
gamerule advance_time true
gamerule fall_damage true
gamerule spawn_wandering_traders true
gamerule spawn_patrols true
gamerule pvp true

# Worldborder
worldborder center 0 0
worldborder set 10000

# Clear Effects
effect clear @a

# Inventory
clear @a
function race:start/firstcompass
execute if score #mode gamemode matches 2 run give @a nether_star[custom_name={text:"Teleport Horse",italic:false,color:"light_purple"},enchantment_glint_override=true,consumable={consume_seconds:0.05,animation:none,has_consume_particles:false},use_cooldown={seconds:1,cooldown_group:"teleport_horse"},max_stack_size=2,custom_data={teleporter:yes}]
execute if score #mode gamemode matches 3 run give @a nautilus_shell[custom_name={text:"Teleport Nautilus",italic:false,color:"aqua"},enchantment_glint_override=true,consumable={consume_seconds:0.05,animation:none,has_consume_particles:false},use_cooldown={seconds:1,cooldown_group:"teleport_horse"},max_stack_size=2,custom_data={teleporter:yes}]

# Titles
title @a title {"text":"GO!","color":"green","bold":true}
execute as @a at @s run playsound minecraft:item.goat_horn.sound.0 master @s
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s

# Start the Timer
function race:timer