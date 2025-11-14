# Increase Timer
scoreboard players add #seconds timer 1

# Minutes and Hours Logic
execute if score #seconds timer matches 60.. run scoreboard players add #minutes timer 1
execute if score #seconds timer matches 60.. run scoreboard players set #seconds timer 0

execute if score #minutes timer matches 60.. run scoreboard players add #hours timer 1
execute if score #minutes timer matches 60.. run scoreboard players set #minutes timer 0

# Display if Seconds, Minutes and Hours are a Single Digit
execute if score #seconds timer matches ..9 if score #minutes timer matches ..9 if score #hours timer matches ..9 run title @a actionbar [{text:"0",color:"yellow"},{score:{name:"#hours",objective:"timer"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"#minutes",objective:"timer"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"#seconds",objective:"timer"},color:"yellow"}]
# Display if Seconds are a Double Digit, but Minutes and Hours are a Single Digit
execute if score #seconds timer matches 10.. if score #minutes timer matches ..9 if score #hours timer matches ..9 run title @a actionbar [{text:"0",color:"yellow"},{score:{name:"#hours",objective:"timer"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"#minutes",objective:"timer"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"#seconds",objective:"timer"},color:"yellow"}]
# Dipslay if Seconds and Hours are a Single Digit, but Minutes are a Double Digit
execute if score #seconds timer matches ..9 if score #minutes timer matches 10.. if score #hours timer matches ..9 run title @a actionbar [{text:"0",color:"yellow"},{score:{name:"#hours",objective:"timer"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"#minutes",objective:"timer"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"#seconds",objective:"timer"},color:"yellow"}]
# Display if Seconds and Minutes are Double Digits, but Hours are a Single Digit
execute if score #seconds timer matches 10.. if score #minutes timer matches 10.. if score #hours timer matches ..9 run title @a actionbar [{text:"0",color:"yellow"},{score:{name:"#hours",objective:"timer"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"#minutes",objective:"timer"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"#seconds",objective:"timer"},color:"yellow"}]
# Display if Seconds, Minutes and (somehow) Hours are Double Digits
execute if score #seconds timer matches 10.. if score #minutes timer matches 10.. if score #hours timer matches 10.. run title @a actionbar [{score:{name:"#hours",objective:"timer"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"#minutes",objective:"timer"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"#seconds",objective:"timer"},color:"yellow"}]
# Display if Hours are Double Digits, but Seconds and Minutes are Single Digits
execute if score #seconds timer matches ..9 if score #minutes timer matches ..9 if score #hours timer matches 10.. run title @a actionbar [{score:{name:"#hours",objective:"timer"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"#minutes",objective:"timer"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"#seconds",objective:"timer"},color:"yellow"}]
# Display if Hours and Seconds are Double Digits, but Minutes are a Single Digit
execute if score #seconds timer matches 10.. if score #minutes timer matches ..9 if score #hours timer matches 10.. run title @a actionbar [{score:{name:"#hours",objective:"timer"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"#minutes",objective:"timer"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"#seconds",objective:"timer"},color:"yellow"}]
# Display if Hours and Minutes are Double Digits, but Seconds are a Single Digit
execute if score #seconds timer matches ..9 if score #minutes timer matches 10.. if score #hours timer matches 10.. run title @a actionbar [{score:{name:"#hours",objective:"timer"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"#minutes",objective:"timer"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"#seconds",objective:"timer"},color:"yellow"}]

# Schedule the clock again
schedule function race:timer 1s