advancement revoke @s only race:mount/camel_teleport
execute if entity @s[team=blue] run kill @e[type=camel,team=blue]
execute if entity @s[team=blue] at @s run summon camel ~ ~ ~ {CustomName:{text:"Team Blue's Camel",color:"blue"},Team:"blue",Tame:1b,Health:1024.0f,equipment:{saddle:{id:"minecraft:saddle",count:1}},active_effects:[{id:"minecraft:resistance",amplifier:255,duration:-1,show_particles:false}],attributes:[{id:"minecraft:movement_speed",base:0.2}]}

execute if entity @s[team=red] run kill @e[type=camel,team=red]
execute if entity @s[team=red] run summon camel ~ ~ ~ {CustomName:{text:"Team Red's Camel",color:"red"},Team:"red",Tame:1b,Health:1024.0f,equipment:{saddle:{id:"minecraft:saddle",count:1}},active_effects:[{id:"minecraft:resistance",amplifier:255,duration:-1,show_particles:false}],attributes:[{id:"minecraft:movement_speed",base:0.2}]}

execute if entity @s[team=yellow] run kill @e[type=camel,team=yellow]
execute if entity @s[team=yellow] run summon camel ~ ~ ~ {CustomName:{text:"Team Yellow's Camel",color:"yellow"},Team:"yellow",Tame:1b,Health:1024.0f,equipment:{saddle:{id:"minecraft:saddle",count:1}},active_effects:[{id:"minecraft:resistance",amplifier:255,duration:-1,show_particles:false}],attributes:[{id:"minecraft:movement_speed",base:0.2}]}

execute if entity @s[team=green] run kill @e[type=camel,team=green]
execute if entity @s[team=green] run summon camel ~ ~ ~ {CustomName:{text:"Team Green's Camel",color:"green"},Team:"green",Tame:1b,Health:1024.0f,equipment:{saddle:{id:"minecraft:saddle",count:1}},active_effects:[{id:"minecraft:resistance",amplifier:255,duration:-1,show_particles:false}],attributes:[{id:"minecraft:movement_speed",base:0.2}]}

give @s rabbit_hide[item_model="minecraft:nether_star",custom_name={text:"Teleport Camel",italic:false,color:"yellow"},enchantment_glint_override=true,consumable={consume_seconds:0.05,animation:none,has_consume_particles:false},use_cooldown={seconds:1,cooldown_group:"teleport_camel"},max_stack_size=2,custom_data={teleporter:yes}]

execute as @s at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100 0