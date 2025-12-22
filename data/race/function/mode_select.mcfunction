tellraw @a {text:"Welcome to the Ardonia Grand Prix!",color:"gray"}
tellraw @a[tag=!admin] {text:"Please wait as the admin selects the game mode",color:"gray"}
tellraw @a[tag=admin] {text:"Which mode would you like to play?",color:"gray"}
tellraw @a[tag=admin] {text:"Normal Mode",color:"green",click_event:{action:run_command,command:'function race:start/modes/select_normal'},hover_event:{action:show_text,value:"Run the race solo"}}
tellraw @a[tag=admin] {text:"Mr President Mode",color:"blue",click_event:{action:run_command,command:'function race:start/modes/select_president'},hover_event:{action:show_text,value:"Run the race as teams where the bodyguard must defend their president"}}
tellraw @a[tag=admin] {text:"Horse Mode",color:"red",click_event:{action:run_command,command:'function race:start/modes/select_horse'},hover_event:{action:show_text,value:"Run the race while riding horses"}}