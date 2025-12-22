advancement revoke @s only race:horse/horse_teleport
execute if entity @s[team=1] run tp @e[type=skeleton_horse,team=1,limit=1] @s
execute if entity @s[team=2] run tp @e[type=skeleton_horse,team=2,limit=1] @s
execute if entity @s[team=3] run tp @e[type=skeleton_horse,team=3,limit=1] @s
execute if entity @s[team=4] run tp @e[type=skeleton_horse,team=4,limit=1] @s
execute if entity @s[team=5] run tp @e[type=skeleton_horse,team=5,limit=1] @s
execute if entity @s[team=6] run tp @e[type=skeleton_horse,team=6,limit=1] @s
execute if entity @s[team=7] run tp @e[type=skeleton_horse,team=7,limit=1] @s
execute if entity @s[team=8] run tp @e[type=skeleton_horse,team=8,limit=1] @s

give @s nether_star[custom_name={text:"Teleport Horse",italic:false,color:"light_purple"},enchantment_glint_override=true,consumable={consume_seconds:0.05,animation:none,has_consume_particles:false},use_cooldown={seconds:1,cooldown_group:"teleport_horse"},max_stack_size=2,custom_data={teleporter:yes}]

execute as @s at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100 0