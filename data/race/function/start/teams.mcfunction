team join blue @a[sort=random,limit=2,team=!blue]
team join red @a[sort=random,limit=2,team=!blue,team=!red]
team join yellow @a[sort=random,limit=2,team=!blue,team=!red,team=!yellow]
team join green @a[sort=random,limit=2,team=!blue,team=!red,team=!yellow,team=!green]

tag @a[limit=1,sort=random,team=blue] add president
tag @a[limit=1,tag=!president,team=blue] add bodyguard

tag @a[limit=1,sort=random,team=red] add president
tag @a[limit=1,tag=!president,team=red] add bodyguard

tag @a[limit=1,sort=random,team=yellow] add president
tag @a[limit=1,tag=!president,team=yellow] add bodyguard

tag @a[limit=1,sort=random,team=green] add president
tag @a[limit=1,tag=!president,team=green] add bodyguard

tellraw @a[team=blue,tag=president] [{text:"Joined team ",color:"gray"},{text:"Blue",color:"blue"},{text:" as ",color:"gray"},{text:"President",color:"blue"}]
tellraw @a[team=blue,tag=bodyguard] [{text:"Joined team ",color:"gray"},{text:"Blue",color:"blue"},{text:" as a ",color:"gray"},{text:"Bodyguard",color:"blue"}]
title @a[team=blue,tag=president] actionbar [{text:"Your Bodyguard is ",color:"gray"},{selector:"@a[team=blue,tag=bodyguard]",color:"blue"}]
title @a[team=blue,tag=bodyguard] actionbar [{text:"Your President is ",color:"gray"},{selector:"@a[team=blue,tag=president]",color:"blue"}]

tellraw @a[team=red,tag=president] [{text:"Joined team ",color:"gray"},{text:"Red",color:"red"},{text:" as ",color:"gray"},{text:"President",color:"red"}]
tellraw @a[team=red,tag=bodyguard] [{text:"Joined team ",color:"gray"},{text:"Red",color:"red"},{text:" as a ",color:"gray"},{text:"Bodyguard",color:"red"}]
title @a[team=red,tag=president] actionbar [{text:"Your Bodyguard is ",color:"gray"},{selector:"@a[team=red,tag=bodyguard]",color:"red"}]
title @a[team=red,tag=bodyguard] actionbar [{text:"Your President is ",color:"gray"},{selector:"@a[team=red,tag=president]",color:"red"}]

tellraw @a[team=yellow,tag=president] [{text:"Joined team ",color:"gray"},{text:"Yellow",color:"yellow"},{text:" as ",color:"gray"},{text:"President",color:"yellow"}]
tellraw @a[team=yellow,tag=bodyguard] [{text:"Joined team ",color:"gray"},{text:"Yellow",color:"yellow"},{text:" as a ",color:"gray"},{text:"Bodyguard",color:"yellow"}]
title @a[team=yellow,tag=president] actionbar [{text:"Your Bodyguard is ",color:"gray"},{selector:"@a[team=yellow,tag=bodyguard]",color:"yellow"}]
title @a[team=yellow,tag=bodyguard] actionbar [{text:"Your President is ",color:"gray"},{selector:"@a[team=yellow,tag=president]",color:"yellow"}]

tellraw @a[team=green,tag=president] [{text:"Joined team ",color:"gray"},{text:"Green",color:"green"},{text:" as ",color:"gray"},{text:"President",color:"green"}]
tellraw @a[team=green,tag=bodyguard] [{text:"Joined team ",color:"gray"},{text:"Green",color:"green"},{text:" as a ",color:"gray"},{text:"Bodyguard",color:"green"}]
title @a[team=green,tag=president] actionbar [{text:"Your Bodyguard is ",color:"gray"},{selector:"@a[team=green,tag=bodyguard]",color:"green"}]
title @a[team=green,tag=bodyguard] actionbar [{text:"Your President is ",color:"gray"},{selector:"@a[team=green,tag=president]",color:"green"}]