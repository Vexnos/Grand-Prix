# Clear Old Items
clear @a iron_helmet
clear @a iron_chestplate
clear @a iron_leggings
clear @a iron_boots
# clear @a diamond_sword
# clear @a bow
clear @a shield

# Surplus Items
item replace entity @a armor.head with diamond_helmet[enchantments={levels:{protection:2}}]
item replace entity @a armor.chest with diamond_chestplate[enchantments={levels:{protection:2}}]
item replace entity @a armor.legs with diamond_leggings[enchantments={levels:{protection:2}}]
item replace entity @a armor.feet with diamond_boots[enchantments={levels:{protection:2}}]
give @a diamond_sword[enchantments={levels:{sharpness:5,sweeping_edge:3,looting:3,unbreaking:3,fire_aspect:2}}]
give @a bow[enchantments={levels:{power:5,unbreaking:3,flame:1}}]
give @a spectral_arrow 32
item replace entity @a weapon.offhand with shield[enchantments={unbreaking:3},base_color="black"]
give @a potion[potion_contents={potion:"minecraft:long_swiftness"}]
give @a potion[potion_contents={potion:"minecraft:strong_leaping"}]