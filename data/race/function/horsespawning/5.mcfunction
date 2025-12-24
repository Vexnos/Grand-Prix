kill @e[type=skeleton_horse,team=5]
execute at @s run summon skeleton_horse ~ ~ ~ {Team:"5",Tame:1b,Health:1024.0f,equipment:{saddle:{id:"minecraft:saddle"}},attributes:[{base:0.3377,id:"minecraft:movement_speed"},{base:0.75,id:"minecraft:jump_strength"},{base:1024,id:"minecraft:max_health"}],active_effects:[{id:"minecraft:resistance",amplifier:255,duration:-1,show_particles:false}]}

tag @a[team=5,limit=1] add horse_name
data modify block -302 93 -4283 front_text.messages[0] set value [{"selector":"@a[team=5,limit=1]"},{text:"'s Horse"}]
data modify entity @e[type=skeleton_horse,team=5,limit=1] CustomName set from block -302 93 -4283 front_text.messages[0]
tag @a[tag=horse_name] remove horse_name