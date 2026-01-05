execute as @a[scores={deaths=1..},tag=!dead] run schedule function race:deaths/teleport 5t
execute as @a[scores={deaths=1..},tag=!dead] run tag @s add dead