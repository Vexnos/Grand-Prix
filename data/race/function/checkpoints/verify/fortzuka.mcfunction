execute as @s[tag=felora] run function race:checkpoints/fortzuka
execute as @s[tag=!felora] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Felora!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!felora] at @s run playsound minecraft:entity.ender_dragon.growl master @s