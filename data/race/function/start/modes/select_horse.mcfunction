# Select Normal Mode
scoreboard players set #mode gamemode 0
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s
tellraw @a [{text:"Horse Mode",color:"red"},{text:" Selected",color:"white"}]
function race:start/start