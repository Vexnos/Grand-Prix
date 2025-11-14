# Set Spawnpoint
execute in minecraft:overworld run spawnpoint @s -16 78 -4704
tellraw @s {"text":"Spawnpoint Set!","color":"green"}

# Compasses
clear @s compass

# Checkpoint score
# scoreboard players add @s checkpoints 1

# Surplus Items

# Titles
# Display if Seconds, Minutes and Hours are a Single Digit
execute unless score #checkpoint galePoint matches 1.. if score #seconds timer matches ..9 if score #minutes timer matches ..9 if score #hours timer matches ..9 run tellraw @a [{selector:"@s",color:"dark_green"},{text:" has won with a time of: ",color:"gold"},{text:"0",color:"green"},{score:{name:"#hours",objective:"timer"},color:"green"},{text:":0",color:"green"},{score:{name:"#minutes",objective:"timer"},color:"green"},{text:":0",color:"green"},{score:{name:"#seconds",objective:"timer"},color:"green"}]
# Display if Seconds are a Double Digit, but Minutes and Hours are a Single Digit
execute unless score #checkpoint galePoint matches 1.. if score #seconds timer matches 10.. if score #minutes timer matches ..9 if score #hours timer matches ..9 run tellraw @a [{selector:"@s",color:"dark_green"},{text:" has won with a time of: ",color:"gold"},{text:"0",color:"green"},{score:{name:"#hours",objective:"timer"},color:"green"},{text:":0",color:"green"},{score:{name:"#minutes",objective:"timer"},color:"green"},{text:":",color:"green"},{score:{name:"#seconds",objective:"timer"},color:"green"}]
# Dipslay if Seconds and Hours are a Single Digit, but Minutes are a Double Digit
execute unless score #checkpoint galePoint matches 1.. if score #seconds timer matches ..9 if score #minutes timer matches 10.. if score #hours timer matches ..9 run tellraw @a [{selector:"@s",color:"dark_green"},{text:" has won with a time of: ",color:"gold"},{text:"0",color:"green"},{score:{name:"#hours",objective:"timer"},color:"green"},{text:":",color:"green"},{score:{name:"#minutes",objective:"timer"},color:"green"},{text:":0",color:"green"},{score:{name:"#seconds",objective:"timer"},color:"green"}]
# Display if Seconds and Minutes are Double Digits, but Hours are a Single Digit
execute unless score #checkpoint galePoint matches 1.. if score #seconds timer matches 10.. if score #minutes timer matches 10.. if score #hours timer matches ..9 run tellraw @a [{selector:"@s",color:"dark_green"},{text:" has won with a time of: ",color:"gold"},{text:"0",color:"green"},{score:{name:"#hours",objective:"timer"},color:"green"},{text:":",color:"green"},{score:{name:"#minutes",objective:"timer"},color:"green"},{text:":",color:"green"},{score:{name:"#seconds",objective:"timer"},color:"green"}]
# Display if Seconds, Minutes and (somehow) Hours are Double Digits
execute unless score #checkpoint galePoint matches 1.. if score #seconds timer matches 10.. if score #minutes timer matches 10.. if score #hours timer matches 10.. run tellraw @a [{selector:"@s",color:"dark_green"},{text:" has won with a time of: ",color:"gold"},{score:{name:"#hours",objective:"timer"},color:"green"},{text:":",color:"green"},{score:{name:"#minutes",objective:"timer"},color:"green"},{text:":",color:"green"},{score:{name:"#seconds",objective:"timer"},color:"green"}]
# Display if Hours are Double Digits, but Seconds and Minutes are Single Digits
execute unless score #checkpoint galePoint matches 1.. if score #seconds timer matches ..9 if score #minutes timer matches ..9 if score #hours timer matches 10.. run tellraw @a [{selector:"@s",color:"dark_green"},{text:" has won with a time of: ",color:"gold"},{score:{name:"#hours",objective:"timer"},color:"green"},{text:":0",color:"green"},{score:{name:"#minutes",objective:"timer"},color:"green"},{text:":0",color:"green"},{score:{name:"#seconds",objective:"timer"},color:"green"}]
# Display if Hours and Seconds are Double Digits, but Minutes are a Single Digit
execute unless score #checkpoint galePoint matches 1.. if score #seconds timer matches 10.. if score #minutes timer matches ..9 if score #hours timer matches 10.. run tellraw @a [{selector:"@s",color:"dark_green"},{text:" has won with a time of: ",color:"gold"},{score:{name:"#hours",objective:"timer"},color:"green"},{text:":0",color:"green"},{score:{name:"#minutes",objective:"timer"},color:"green"},{text:":",color:"green"},{score:{name:"#seconds",objective:"timer"},color:"green"}]
# Display if Hours and Minutes are Double Digits, but Seconds are a Single Digit
execute unless score #checkpoint galePoint matches 1.. if score #seconds timer matches ..9 if score #minutes timer matches 10.. if score #hours timer matches 10.. run tellraw @a [{selector:"@s",color:"dark_green"},{text:" has won with a time of: ",color:"gold"},{score:{name:"#hours",objective:"timer"},color:"green"},{text:":",color:"green"},{score:{name:"#minutes",objective:"timer"},color:"green"},{text:":0",color:"green"},{score:{name:"#seconds",objective:"timer"},color:"green"}]

execute if score #checkpoint galePoint matches 1.. if score #seconds timer matches ..9 if score #minutes timer matches ..9 if score #hours timer matches ..9 run tellraw @a [{selector:"@s",color:"dark_green"},{text:" has finished with a time of: ",color:"gold"},{text:"0",color:"green"},{score:{name:"#hours",objective:"timer"},color:"green"},{text:":0",color:"green"},{score:{name:"#minutes",objective:"timer"},color:"green"},{text:":0",color:"green"},{score:{name:"#seconds",objective:"timer"},color:"green"}]
# Display if Seconds are a Double Digit, but Minutes and Hours are a Single Digit
execute if score #checkpoint galePoint matches 1.. if score #seconds timer matches 10.. if score #minutes timer matches ..9 if score #hours timer matches ..9 run tellraw @a [{selector:"@s",color:"dark_green"},{text:" has finished with a time of: ",color:"gold"},{text:"0",color:"green"},{score:{name:"#hours",objective:"timer"},color:"green"},{text:":0",color:"green"},{score:{name:"#minutes",objective:"timer"},color:"green"},{text:":",color:"green"},{score:{name:"#seconds",objective:"timer"},color:"green"}]
# Dipslay if Seconds and Hours are a Single Digit, but Minutes are a Double Digit
execute if score #checkpoint galePoint matches 1.. if score #seconds timer matches ..9 if score #minutes timer matches 10.. if score #hours timer matches ..9 run tellraw @a [{selector:"@s",color:"dark_green"},{text:" has finished with a time of: ",color:"gold"},{text:"0",color:"green"},{score:{name:"#hours",objective:"timer"},color:"green"},{text:":",color:"green"},{score:{name:"#minutes",objective:"timer"},color:"green"},{text:":0",color:"green"},{score:{name:"#seconds",objective:"timer"},color:"green"}]
# Display if Seconds and Minutes are Double Digits, but Hours are a Single Digit
execute if score #checkpoint galePoint matches 1.. if score #seconds timer matches 10.. if score #minutes timer matches 10.. if score #hours timer matches ..9 run tellraw @a [{selector:"@s",color:"dark_green"},{text:" has finished with a time of: ",color:"gold"},{text:"0",color:"green"},{score:{name:"#hours",objective:"timer"},color:"green"},{text:":",color:"green"},{score:{name:"#minutes",objective:"timer"},color:"green"},{text:":",color:"green"},{score:{name:"#seconds",objective:"timer"},color:"green"}]
# Display if Seconds, Minutes and (somehow) Hours are Double Digits
execute if score #checkpoint galePoint matches 1.. if score #seconds timer matches 10.. if score #minutes timer matches 10.. if score #hours timer matches 10.. run tellraw @a [{selector:"@s",color:"dark_green"},{text:" has finished with a time of: ",color:"gold"},{score:{name:"#hours",objective:"timer"},color:"green"},{text:":",color:"green"},{score:{name:"#minutes",objective:"timer"},color:"green"},{text:":",color:"green"},{score:{name:"#seconds",objective:"timer"},color:"green"}]
# Display if Hours are Double Digits, but Seconds and Minutes are Single Digits
execute if score #checkpoint galePoint matches 1.. if score #seconds timer matches ..9 if score #minutes timer matches ..9 if score #hours timer matches 10.. run tellraw @a [{selector:"@s",color:"dark_green"},{text:" has finished with a time of: ",color:"gold"},{score:{name:"#hours",objective:"timer"},color:"green"},{text:":0",color:"green"},{score:{name:"#minutes",objective:"timer"},color:"green"},{text:":0",color:"green"},{score:{name:"#seconds",objective:"timer"},color:"green"}]
# Display if Hours and Seconds are Double Digits, but Minutes are a Single Digit
execute if score #checkpoint galePoint matches 1.. if score #seconds timer matches 10.. if score #minutes timer matches ..9 if score #hours timer matches 10.. run tellraw @a [{selector:"@s",color:"dark_green"},{text:" has finished with a time of: ",color:"gold"},{score:{name:"#hours",objective:"timer"},color:"green"},{text:":0",color:"green"},{score:{name:"#minutes",objective:"timer"},color:"green"},{text:":",color:"green"},{score:{name:"#seconds",objective:"timer"},color:"green"}]
# Display if Hours and Minutes are Double Digits, but Seconds are a Single Digit
execute if score #checkpoint galePoint matches 1.. if score #seconds timer matches ..9 if score #minutes timer matches 10.. if score #hours timer matches 10.. run tellraw @a [{selector:"@s",color:"dark_green"},{text:" has finished with a time of: ",color:"gold"},{score:{name:"#hours",objective:"timer"},color:"green"},{text:":",color:"green"},{score:{name:"#minutes",objective:"timer"},color:"green"},{text:":0",color:"green"},{score:{name:"#seconds",objective:"timer"},color:"green"}]

execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s
advancement grant @s only race:galepoint

# Resistance
effect give @s resistance infinite 5 true

# Tags and Scoreboards
scoreboard players set #checkpoint galePoint 1
tag @s add galePoint