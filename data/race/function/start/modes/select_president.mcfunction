# Select Normal Mode
scoreboard players set #mode gamemode 0
execute as @a at @s run playsound minecraft:entity.allay.death master @s ~ ~ ~ 100 0
tellraw @a [{text:"President Mode",color:"blue"},{text:" Selected",color:"white"}]
tellraw @a {text:"Starting in 30 seconds...",color:"gray"}
schedule function race:start/start 20s