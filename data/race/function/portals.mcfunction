# Overworld --> Nether
execute in minecraft:overworld as @a[x=-500,y=103,z=-218,dx=10,dy=14,dz=1] run execute in minecraft:the_nether run tp @s -204 77 -1140

# Nether --> Overworld
execute in minecraft:the_nether as @a[x=-209,y=78,z=-1145,dx=10,dy=14,dz=1] run execute in minecraft:overworld run tp @s -495 103 -222

# Overworld --> The End
execute in minecraft:overworld as @a[x=-574,y=85,z=94,dx=4,dy=1,dz=4] run execute in minecraft:the_end run tp @s -1113 59 -794

# The End --> Overworld
execute in minecraft:the_end as @a[x=-1082,y=57,z=-526,dx=4,dy=1,dz=4] run execute in minecraft:overworld run tp @s -572 79 96