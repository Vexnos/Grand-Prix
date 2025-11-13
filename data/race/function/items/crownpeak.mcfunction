# Clear Old Items
clear @a iron_helmet
clear @a iron_chestplate
clear @a iron_leggings
clear @a iron_boots
# clear @a iron_sword
# clear @a bow

# Surplus Items
item replace entity @a armor.chest with iron_chestplate[enchantments={protection:2}]
item replace entity @a armor.head with iron_helmet[enchantments={protection:2}]
item replace entity @a armor.legs with iron_leggings[enchantments={protection:2}]
item replace entity @a armor.feet with iron_boots[enchantments={protection:2}]
item replace entity @a weapon.offhand with shield
give @a diamond_sword[enchantments={sharpness:2,unbreaking:2}]
give @a bow[enchantments={power:3,unbreaking:2}]
give @a oak_log 16
give @a cooked_salmon 16