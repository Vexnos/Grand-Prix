# Clear Old Items
clear @a stone_axe
clear @a stone_pickaxe
clear @a iron_sword
clear @a leather_leggings
clear @a leather_helmet
clear @a bow

# Surplus Items
item replace entity @a armor.head with iron_helmet
item replace entity @a armor.legs with iron_leggings
give @a iron_sword[enchantments={levels:{sharpness:2,unbreaking:2}}]
give @a iron_axe
give @a iron_pickaxe
give @a bow[enchantments={levels:{power:1,unbreaking:2}}]
give @a bread 16