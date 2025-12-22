# Select Normal Mode
scoreboard players set #mode gamemode 0
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s
tellraw @a [{text:"Normal Mode",color:"green"},{text:" Selected",color:"white"}]
tellraw @a {text:"Starting in 30 seconds...",color:"gray"}
schedule function race:start/start 20s