execute as @s[tag=mtVelgrin] run function race:checkpoints/tartarus
execute as @s[tag=!mtVelgrin] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Mt Velgrin!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!mtVelgrin] at @s run playsound minecraft:entity.ender_dragon.growl master @s