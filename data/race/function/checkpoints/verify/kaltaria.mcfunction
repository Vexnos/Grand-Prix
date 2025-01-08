execute as @s[tag=ardoniArena] run function race:checkpoints/kaltaria
execute as @s[tag=!ardoniArena] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"The Tournament Arena!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!ardoniArena] at @s run playsound minecraft:entity.ender_dragon.growl master @s