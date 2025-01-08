execute as @s[tag=northwindPass] run function race:checkpoints/ardoniarena
execute as @s[tag=!northwindPass] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Northwind Pass!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!northwindPass] at @s run playsound minecraft:entity.ender_dragon.growl master @s