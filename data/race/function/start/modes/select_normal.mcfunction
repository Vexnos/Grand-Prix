# Select Normal Mode
scoreboard players set #mode gamemode 0
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s
tellraw @a [{text:"Normal Mode",color:"green"},{text:" Selected",color:"white"}]
function race:start/start