execute as @a[team=blue,tag=bodyguard,scores={deaths=1..}] run tp @s @a[team=blue,tag=president,limit=1]
execute as @a[team=blue,tag=bodyguard,scores={deaths=1..}] run scoreboard players set @s deaths 0

execute as @a[team=red,tag=bodyguard,scores={deaths=1..}] run tp @s @a[team=red,tag=president,limit=1]
execute as @a[team=red,tag=bodyguard,scores={deaths=1..}] run scoreboard players set @s deaths 0

execute as @a[team=yellow,tag=bodyguard,scores={deaths=1..}] run tp @s @a[team=yellow,tag=president,limit=1]
execute as @a[team=yellow,tag=bodyguard,scores={deaths=1..}] run scoreboard players set @s deaths 0

execute as @a[team=green,tag=bodyguard,scores={deaths=1..}] run tp @s @a[team=green,tag=president,limit=1]
execute as @a[team=green,tag=bodyguard,scores={deaths=1..}] run scoreboard players set @s deaths 0