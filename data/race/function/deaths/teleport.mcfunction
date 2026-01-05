execute if entity @a[team=blue,tag=dead] run tp @a[team=blue,tag=bodyguard] @a[team=blue,tag=president,limit=1]

execute if entity @a[team=red,tag=dead] run tp @a[team=red,tag=bodyguard] @a[team=red,tag=president,limit=1]

execute if entity @a[team=yellow,tag=dead] run tp @a[team=yellow,tag=bodyguard] @a[team=yellow,tag=president,limit=1]

execute if entity @a[team=green,tag=dead] run tp @a[team=green,tag=bodyguard] @a[team=green,tag=president,limit=1]

scoreboard players set @a[scores={deaths=1..}] deaths 0
tag @a[tag=dead] remove dead