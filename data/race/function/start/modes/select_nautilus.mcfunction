# Select Normal Mode
scoreboard players set #mode gamemode 3
execute as @a at @s run playsound minecraft:entity.nautilus.dash master @s
tellraw @a [{text:"Nautilus Mode",color:"aqua"},{text:" Selected",color:"white"}]
tellraw @a {text:"Starting in 30 seconds...",color:"gray"}
schedule function race:start/start 20s