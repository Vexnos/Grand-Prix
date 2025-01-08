execute as @s[tag=oakendale] run function race:checkpoints/etherea
execute as @s[tag=!oakendale] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Oakendale!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!oakendale] at @s run playsound minecraft:entity.ender_dragon.growl master @s