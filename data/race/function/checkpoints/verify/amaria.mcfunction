execute as @s[tag=meridian] run function race:checkpoints/amaria
execute as @s[tag=!meridian] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Meridian!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!meridian] at @s run playsound minecraft:entity.ender_dragon.growl master @s