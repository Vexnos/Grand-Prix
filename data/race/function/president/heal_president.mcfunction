advancement revoke @s only race:president/heal_president

effect give @s regeneration 10 0
execute at @s run particle minecraft:heart ~ ~1 ~ 1 1 1 0.5 10 force
execute as @a at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 100 2
execute at @s run effect give @e[type=camel,sort=nearest] slowness 10 0 true

give @s nether_star[custom_data={regen:yes},custom_name={text:"Heal",color:"red",italic:false},consumable={consume_seconds:5,animation:toot_horn},use_cooldown={seconds:10,cooldown_group:heal_president},max_stack_size=2]