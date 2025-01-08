execute as @s[tag=hailstone] run function race:checkpoints/northwindpass
execute as @s[tag=!hailstone] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Hailstone!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!hailstone] at @s run playsound minecraft:entity.ender_dragon.growl master @s