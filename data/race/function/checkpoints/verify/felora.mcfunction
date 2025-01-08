execute as @s[tag=etherea] run function race:checkpoints/felora
execute as @s[tag=!etherea] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Etherea!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!etherea] at @s run playsound minecraft:entity.ender_dragon.growl master @s