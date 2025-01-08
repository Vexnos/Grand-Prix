execute as @s[tag=crownPeak] run function race:checkpoints/mtvelgrin
execute as @s[tag=!crownPeak] run title @s actionbar [{"text":"You have missed ","color":"red"},{"text":"Crown Peak!","color":"gold","bold":true},{"text":" Go back!","color":"red"}]
execute as @s[tag=!crownPeak] at @s run playsound minecraft:entity.ender_dragon.growl master @s