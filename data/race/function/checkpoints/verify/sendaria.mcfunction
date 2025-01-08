execute as @s[tag=biggerton] run function race:checkpoints/sendaria
execute as @s[tag=!biggerton] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Biggerton!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!biggerton] at @s run playsound minecraft:entity.ender_dragon.growl master @s