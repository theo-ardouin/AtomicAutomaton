tag @e[type=minecraft:armor_stand, tag=storage_farmer] remove storage_farmer
tag @e[type=minecraft:armor_stand, nbt={HandItems: [{id: "minecraft:wooden_hoe"}]}] add storage_farmer

execute as @s at @e[tag=storage_farmer, sort=nearest, limit=1] unless block ^ ^ ^ minecraft:hopper{Items: [{Slot: 4b}]} run function atomic_automaton:farmer/routine
