# Select Horse Mode
scoreboard players set #mode gamemode 4
execute as @a at @s run playsound minecraft:entity.camel.stand master @s
tellraw @a [{text:"Camel Mode",color:"yellow"},{text:" Selected",color:"white"}]
tellraw @a {text:"Starting in 30 seconds...",color:"gray"}
schedule function race:start/start 20s