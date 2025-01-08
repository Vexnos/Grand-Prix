execute as @s[tag=tartarus] run function race:checkpoints/meridian
execute as @s[tag=!tartarus] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Tartarus!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!tartarus] at @s run playsound minecraft:entity.ender_dragon.growl master @s