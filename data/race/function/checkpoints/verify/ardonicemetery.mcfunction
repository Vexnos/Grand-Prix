execute as @s[tag=sendaria] run function race:checkpoints/ardonicemetery
execute as @s[tag=!sendaria] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Sendaria!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!sendaria] at @s run playsound minecraft:entity.ender_dragon.growl master @s