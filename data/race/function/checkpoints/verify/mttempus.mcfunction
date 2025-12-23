execute as @s[tag=fortZuka] run function race:checkpoints/mttempus
execute as @s[tag=!fortZuka] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Fort Zuka!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!fortZuka] at @s run playsound minecraft:entity.ender_dragon.growl master @s