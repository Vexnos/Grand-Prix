# Change colours the lower the number
execute if score #countdown countdown matches 4.. run title @a title {"score":{"objective":"countdown","name":"#countdown"},"color":"dark_green"}
execute if score #countdown countdown matches 3 run title @a title {"score":{"objective":"countdown","name":"#countdown"},"color":"green"}
execute if score #countdown countdown matches 2 run title @a title {"score":{"objective":"countdown","name":"#countdown"},"color":"yellow"}
execute if score #countdown countdown matches 1 run title @a title {"score":{"objective":"countdown","name":"#countdown"},"color":"red"}

# Tick
execute as @a at @s run playsound minecraft:ui.button.click master @s

# Countdown Logic
scoreboard players remove #countdown countdown 1
execute unless score #countdown countdown matches ..0 run schedule function race:start/countdown 2s
execute if score #countdown countdown matches 0 run schedule function race:start/go 2s