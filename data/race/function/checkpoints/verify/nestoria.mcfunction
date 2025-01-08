execute as @s[tag=ardoniCemetery] run function race:checkpoints/nestoria
execute as @s[tag=!ardoniCemetery] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"The Ardoni Cemetary!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!ardoniCemetery] at @s run playsound minecraft:entity.ender_dragon.growl master @s