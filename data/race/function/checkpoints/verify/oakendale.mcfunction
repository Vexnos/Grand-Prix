execute as @s[tag=voltaria] run function race:checkpoints/oakendale
execute as @s[tag=!voltaria] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Voltaria!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!voltaria] at @s run playsound minecraft:entity.ender_dragon.growl master @s