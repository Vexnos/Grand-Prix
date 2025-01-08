execute as @s[tag=vault] run function race:checkpoints/nazgard
execute as @s[tag=!vault] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"The Vault!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!vault] at @s run playsound minecraft:entity.ender_dragon.growl master @s