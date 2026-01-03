advancement revoke @s only race:mount/horse_teleport
execute if entity @s[team=1] as @s run function race:horsespawning/1
execute if entity @s[team=2] as @s run function race:horsespawning/2
execute if entity @s[team=3] as @s run function race:horsespawning/3
execute if entity @s[team=4] as @s run function race:horsespawning/4
execute if entity @s[team=5] as @s run function race:horsespawning/5
execute if entity @s[team=6] as @s run function race:horsespawning/6
execute if entity @s[team=7] as @s run function race:horsespawning/7
execute if entity @s[team=8] as @s run function race:horsespawning/8

give @s nether_star[custom_name={text:"Teleport Horse",italic:false,color:"light_purple"},enchantment_glint_override=true,consumable={consume_seconds:0.05,animation:none,has_consume_particles:false},use_cooldown={seconds:1,cooldown_group:"teleport_horse"},max_stack_size=2,custom_data={teleporter:yes}]

execute as @s at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100 0