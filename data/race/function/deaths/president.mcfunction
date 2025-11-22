execute as @a[team=blue,tag=president,scores={deaths=1..}] run schedule function race:deaths/presidentteleport 1s
execute as @a[team=blue,tag=president,scores={deaths=1..}] run scoreboard players set @s deaths 0

execute as @a[team=red,tag=president,scores={deaths=1..}] run schedule function race:deaths/presidentteleport 1s
execute as @a[team=red,tag=president,scores={deaths=1..}] run scoreboard players set @s deaths 0

execute as @a[team=yellow,tag=president,scores={deaths=1..}] run schedule function race:deaths/presidentteleport 1s
execute as @a[team=yellow,tag=president,scores={deaths=1..}] run scoreboard players set @s deaths 0

execute as @a[team=green,tag=president,scores={deaths=1..}] run schedule function race:deaths/presidentteleport 1s
execute as @a[team=green,tag=president,scores={deaths=1..}] run scoreboard players set @s deaths 0