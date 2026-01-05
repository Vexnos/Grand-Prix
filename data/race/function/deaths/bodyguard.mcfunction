execute as @a[team=blue,tag=bodyguard,scores={deaths=1..}] run schedule function race:deaths/presidentteleport 1s
execute as @a[team=blue,tag=bodyguard,scores={deaths=1..}] run scoreboard players set @s deaths 0

execute as @a[team=red,tag=bodyguard,scores={deaths=1..}] run schedule function race:deaths/presidentteleport 1s
execute as @a[team=red,tag=bodyguard,scores={deaths=1..}] run scoreboard players set @s deaths 0

execute as @a[team=yellow,tag=bodyguard,scores={deaths=1..}] run schedule function race:deaths/presidentteleport 1s
execute as @a[team=yellow,tag=bodyguard,scores={deaths=1..}] run scoreboard players set @s deaths 0

execute as @a[team=green,tag=bodyguard,scores={deaths=1..}] run schedule function race:deaths/presidentteleport 1s
execute as @a[team=green,tag=bodyguard,scores={deaths=1..}] run scoreboard players set @s deaths 0