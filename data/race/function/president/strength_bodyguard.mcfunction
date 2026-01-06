advancement revoke @s only race:president/strength_bodyguard

effect give @s strength 60 0
execute at @s run particle flame ~ ~1 ~ 0.25 0.25 0.25 0.5 50 force
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 2

give @s nether_star[custom_data={strength:yes},custom_name={text:"Strength",color:"light_purple",italic:false},consumable={consume_seconds:0.05,animation:toot_horn},use_cooldown={seconds:120,cooldown_group:strength_bodyguard},max_stack_size=2]