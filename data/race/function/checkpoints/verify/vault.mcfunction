execute as @s[tag=redstoneAcademy] run function race:checkpoints/vault
execute as @s[tag=!redstoneAcademy] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Redstone Academy!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!redstoneAcademy] at @s run playsound minecraft:entity.ender_dragon.growl master @s