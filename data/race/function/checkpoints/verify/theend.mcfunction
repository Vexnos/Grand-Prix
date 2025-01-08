execute as @s[tag=nazgard] run function race:checkpoints/theend
execute as @s[tag=!nazgard] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Nazgard!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!nazgard] at @s run playsound minecraft:entity.ender_dragon.growl master @s