execute as @s[tag=ataraxia] run function race:checkpoints/biggerton
execute as @s[tag=!ataraxia] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Ataraxia!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!ataraxia] at @s run playsound minecraft:entity.ender_dragon.growl master @s