# Generic Message
tellraw @a {text:"Welcome to the Ardonia Grand Prix!",color:"gray"}
tellraw @a[tag=!admin] {text:"Please wait as the admin selects the game mode",color:"gray"}

# Admin Specific Tellraws
# Mode Selection
tellraw @a[tag=admin] {text:"----------------------------------",color:"gray"}
tellraw @a[tag=admin] {text:"Which mode would you like to play?",color:"gray",underlined:true}
tellraw @a[tag=admin] {text:"Normal Mode",color:"green",click_event:{action:run_command,command:'function race:start/modes/select_normal'},hover_event:{action:show_text,value:"Run the race solo"}}
tellraw @a[tag=admin] {text:"Mr President Mode",color:"blue",click_event:{action:run_command,command:'function race:start/modes/select_president'},hover_event:{action:show_text,value:"Run the race as teams where the bodyguard must defend their president"}}
tellraw @a[tag=admin] {text:"Horse Mode",color:"red",click_event:{action:run_command,command:'function race:start/modes/select_horse'},hover_event:{action:show_text,value:"Run the race while riding horses"}}
# tellraw @a[tag=admin] {text:"Nautilus Mode",color:"aqua",click_event:{action:run_command,command:'function race:start/modes/select_nautilus'},hover_event:{action:show_text,value:"Run the race while riding nautili"}}
tellraw @a[tag=admin] {text:"Mr President Camel Mode",color:"yellow",click_event:{action:run_command,command:'function race:start/modes/select_camel'},hover_event:{action:show_text,value:"Run the race while riding camels"}}
# Reset Phantoms
tellraw @a[tag=admin] {text:"----------------------------------",color:"gray"}
tellraw @a[tag=admin] {text:"Reset Game",color:"gray",underlined:true}
tellraw @a[tag=admin] {text:"Reset Phantoms",color:"dark_aqua",click_event:{action:run_command,command:'function race:start/resetphantoms'}}
tellraw @a[tag=admin] {text:"General Reset",color:"dark_red",click_event:{action:run_command,command:'function race:reset'}}