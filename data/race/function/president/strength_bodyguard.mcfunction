advancement revoke @s only race:president/strength_bodyguard

effect give @s strength 10 0
execute at @s run particle flame ~ ~ ~ 1 1 1 1 100 force
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s

give @s nether_star[custom_data={strength:yes},custom_name={text:"Strength",color:"light_purple",italic:false},consumable={consume_seconds:0.05,animation:eat},use_cooldown={seconds:120,cooldown_group:strength_bodyguard},max_stack_size=2]