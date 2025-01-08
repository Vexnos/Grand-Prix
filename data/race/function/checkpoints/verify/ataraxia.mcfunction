execute as @s[tag=hyperia] run function race:checkpoints/ataraxia
execute as @s[tag=!hyperia] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Hyperia!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!hyperia] at @s run playsound minecraft:entity.ender_dragon.growl master @s