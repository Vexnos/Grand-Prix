execute as @s[tag=mtTempus] run function race:checkpoints/redstoneacademy
execute as @s[tag=!mtTempus] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Mt Tempus!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!mtTempus] at @s run playsound minecraft:entity.ender_dragon.growl master @s