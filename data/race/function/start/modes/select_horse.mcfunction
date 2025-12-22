# Select Normal Mode
scoreboard players set #mode gamemode 0
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s
tellraw @a [{text:"Horse Mode",color:"red"},{text:" Selected",color:"white"}]
tellraw @a {text:"Starting in 30 seconds...",color:"gray"}
schedule function race:start/start 20s