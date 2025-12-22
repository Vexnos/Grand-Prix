# Count number of players
execute as @a run scoreboard players add #players players 1

# Players Join Teams
team join 1 @r[limit=1]
team join 2 @r[limit=1,team=!1]
team join 3 @r[limit=1,team=!1,team=!2]
team join 4 @r[limit=1,team=!1,team=!2,team=!3]
team join 5 @r[limit=1,team=!1,team=!2,team=!3,team=!4]
team join 6 @r[limit=1,team=!1,team=!2,team=!3,team=!4,team=!5]
team join 7 @r[limit=1,team=!1,team=!2,team=!3,team=!4,team=!5,team=!6]
team join 8 @r[limit=1,team=!1,team=!2,team=!3,team=!4,team=!5,team=!6,team=!7]

# Summon a horse per player
execute if score #players players matches 1..8 at @a[team=1] run summon skeleton_horse ~ ~ ~ {Team:"1",Tame:1b,Health:1024.0f,equipment:{saddle:{id:"minecraft:saddle"}},attributes:[{base:0.33,id:"minecraft:movement_speed"},{base:0.65,id:"minecraft:jump_strength"},{base:1024,id:"minecraft:max_health"}],active_effects:[{id:"minecraft:resistance",amplifier:255,duration:-1,show_particles:false}]}
execute if score #players players matches 2..8 at @a[team=2] run summon skeleton_horse ~ ~ ~ {Team:"2",Tame:1b,Health:1024.0f,equipment:{saddle:{id:"minecraft:saddle"}},attributes:[{base:0.33,id:"minecraft:movement_speed"},{base:0.65,id:"minecraft:jump_strength"},{base:1024,id:"minecraft:max_health"}],active_effects:[{id:"minecraft:resistance",amplifier:255,duration:-1,show_particles:false}]}
execute if score #players players matches 3..8 at @a[team=3] run summon skeleton_horse ~ ~ ~ {Team:"3",Tame:1b,Health:1024.0f,equipment:{saddle:{id:"minecraft:saddle"}},attributes:[{base:0.33,id:"minecraft:movement_speed"},{base:0.65,id:"minecraft:jump_strength"},{base:1024,id:"minecraft:max_health"}],active_effects:[{id:"minecraft:resistance",amplifier:255,duration:-1,show_particles:false}]}
execute if score #players players matches 4..8 at @a[team=4] run summon skeleton_horse ~ ~ ~ {Team:"4",Tame:1b,Health:1024.0f,equipment:{saddle:{id:"minecraft:saddle"}},attributes:[{base:0.33,id:"minecraft:movement_speed"},{base:0.65,id:"minecraft:jump_strength"},{base:1024,id:"minecraft:max_health"}],active_effects:[{id:"minecraft:resistance",amplifier:255,duration:-1,show_particles:false}]}
execute if score #players players matches 5..8 at @a[team=5] run summon skeleton_horse ~ ~ ~ {Team:"5",Tame:1b,Health:1024.0f,equipment:{saddle:{id:"minecraft:saddle"}},attributes:[{base:0.33,id:"minecraft:movement_speed"},{base:0.65,id:"minecraft:jump_strength"},{base:1024,id:"minecraft:max_health"}],active_effects:[{id:"minecraft:resistance",amplifier:255,duration:-1,show_particles:false}]}
execute if score #players players matches 6..8 at @a[team=6] run summon skeleton_horse ~ ~ ~ {Team:"6",Tame:1b,Health:1024.0f,equipment:{saddle:{id:"minecraft:saddle"}},attributes:[{base:0.33,id:"minecraft:movement_speed"},{base:0.65,id:"minecraft:jump_strength"},{base:1024,id:"minecraft:max_health"}],active_effects:[{id:"minecraft:resistance",amplifier:255,duration:-1,show_particles:false}]}
execute if score #players players matches 7..8 at @a[team=7] run summon skeleton_horse ~ ~ ~ {Team:"7",Tame:1b,Health:1024.0f,equipment:{saddle:{id:"minecraft:saddle"}},attributes:[{base:0.33,id:"minecraft:movement_speed"},{base:0.65,id:"minecraft:jump_strength"},{base:1024,id:"minecraft:max_health"}],active_effects:[{id:"minecraft:resistance",amplifier:255,duration:-1,show_particles:false}]}
execute if score #players players matches 8 at @a[team=8] run summon skeleton_horse ~ ~ ~ {Team:"8",Tame:1b,Health:1024.0f,equipment:{saddle:{id:"minecraft:saddle"}},attributes:[{base:0.33,id:"minecraft:movement_speed"},{base:0.65,id:"minecraft:jump_strength"},{base:1024,id:"minecraft:max_health"}],active_effects:[{id:"minecraft:resistance",amplifier:255,duration:-1,show_particles:false}]}

# Convoluted method of applying a player's name to an entity
# Team 1
tag @a[team=1,limit=1] add horse_name
data modify block -302 93 -4283 front_text.messages[0] set value [{"selector":"@a[team=1,limit=1]"},{text:"'s Horse"}]
data modify entity @e[type=skeleton_horse,team=1,limit=1] CustomName set from block -302 93 -4283 front_text.messages[0]
tag @a[tag=horse_name] remove horse_name

# Team 2
tag @a[team=2,limit=1] add horse_name
data modify block -302 93 -4283 front_text.messages[0] set value [{"selector":"@a[team=2,limit=1]"},{text:"'s Horse"}]
data modify entity @e[type=skeleton_horse,team=2,limit=1] CustomName set from block -302 93 -4283 front_text.messages[0]
tag @a[tag=horse_name] remove horse_name

# Team 3
tag @a[team=3,limit=1] add horse_name
data modify block -302 93 -4283 front_text.messages[0] set value [{"selector":"@a[team=3,limit=1]"},{text:"'s Horse"}]
data modify entity @e[type=skeleton_horse,team=3,limit=1] CustomName set from block -302 93 -4283 front_text.messages[0]
tag @a[tag=horse_name] remove horse_name

# Team 4
tag @a[team=4,limit=1] add horse_name
data modify block -302 93 -4283 front_text.messages[0] set value [{"selector":"@a[team=4,limit=1]"},{text:"'s Horse"}]
data modify entity @e[type=skeleton_horse,team=4,limit=1] CustomName set from block -302 93 -4283 front_text.messages[0]
tag @a[tag=horse_name] remove horse_name

# Team 5
tag @a[team=5,limit=1] add horse_name
data modify block -302 93 -4283 front_text.messages[0] set value [{"selector":"@a[team=5,limit=1]"},{text:"'s Horse"}]
data modify entity @e[type=skeleton_horse,team=5,limit=1] CustomName set from block -302 93 -4283 front_text.messages[0]
tag @a[tag=horse_name] remove horse_name

# Team 6
tag @a[team=6,limit=1] add horse_name
data modify block -302 93 -4283 front_text.messages[0] set value [{"selector":"@a[team=6,limit=1]"},{text:"'s Horse"}]
data modify entity @e[type=skeleton_horse,team=6,limit=1] CustomName set from block -302 93 -4283 front_text.messages[0]
tag @a[tag=horse_name] remove horse_name

# Team 7
tag @a[team=7,limit=1] add horse_name
data modify block -302 93 -4283 front_text.messages[0] set value [{"selector":"@a[team=7,limit=1]"},{text:"'s Horse"}]
data modify entity @e[type=skeleton_horse,team=7,limit=1] CustomName set from block -302 93 -4283 front_text.messages[0]
tag @a[tag=horse_name] remove horse_name

# Team 8
tag @a[team=8,limit=1] add horse_name
data modify block -302 93 -4283 front_text.messages[0] set value [{"selector":"@a[team=8,limit=1]"},{text:"'s Horse"}]
data modify entity @e[type=skeleton_horse,team=8,limit=1] CustomName set from block -302 93 -4283 front_text.messages[0]
tag @a[tag=horse_name] remove horse_name