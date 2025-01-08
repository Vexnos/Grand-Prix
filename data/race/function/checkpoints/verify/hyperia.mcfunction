execute as @s[tag=amaria] run function race:checkpoints/hyperia
execute as @s[tag=!amaria] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Amaria!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!amaria] at @s run playsound minecraft:entity.ender_dragon.growl master @s