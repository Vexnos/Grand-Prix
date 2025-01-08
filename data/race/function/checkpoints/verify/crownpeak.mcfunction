execute as @s[tag=theEnd] run function race:checkpoints/crownpeak
execute as @s[tag=!theEnd] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"The End!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!theEnd] at @s run playsound minecraft:entity.ender_dragon.growl master @s