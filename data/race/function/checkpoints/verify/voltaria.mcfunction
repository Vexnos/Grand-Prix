execute as @s[tag=kaltaria] run function race:checkpoints/voltaria
execute as @s[tag=!kaltaria] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Kaltaria!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!kaltaria] at @s run playsound minecraft:entity.ender_dragon.growl master @s