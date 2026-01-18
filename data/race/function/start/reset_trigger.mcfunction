scoreboard players reset @s reset
# Reset Phantoms
tellraw @a[tag=admin] {text:"----------------------------------",color:"gray"}
tellraw @a[tag=admin] {text:"Reset Game",color:"gray",underlined:true}
tellraw @a[tag=admin] {text:"Reset Phantoms",color:"dark_aqua",click_event:{action:run_command,command:'function race:start/resetphantoms'}}
tellraw @a[tag=admin] {text:"General Reset",color:"dark_red",click_event:{action:run_command,command:'function race:reset'}}
tellraw @a[tag=admin] {text:"----------------------------------",color:"gray"}