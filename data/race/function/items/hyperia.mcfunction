# Clear Old Items
clear @a diamond_helmet
clear @a diamond_chestplate
clear @a diamond_leggings
clear @a diamond_boots
# clear @a iron_axe
# clear @a iron_pickaxe
# clear @a bow

# Surplus Items
item replace entity @a armor.head with diamond_helmet[enchantments={blast_protection:2,protection:2,respiration:3,aqua_affinity:1}]
item replace entity @a armor.chest with diamond_chestplate[enchantments={blast_protection:2,protection:2}]
item replace entity @a armor.legs with diamond_leggings[enchantments={blast_protection:2,protection:2}]
item replace entity @a armor.feet with diamond_boots[enchantments={blast_protection:2,protection:2,feather_falling:2,depth_strider:3}]
give @a diamond_pickaxe[enchantments={efficiency:5}]
give @a diamond_axe[enchantments={sharpness:3}]
give @a bow[enchantments={power:5,punch:2,flame:1,infinity:1,unbreaking:3}]
give @a golden_apple 3
give @a end_crystal 16
give @a obsidian 32
give @a cooked_beef 16
give @a potion[potion_contents={potion:"minecraft:strong_swiftness"}]