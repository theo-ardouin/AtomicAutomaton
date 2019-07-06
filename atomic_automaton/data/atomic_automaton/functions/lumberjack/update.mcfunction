tag @e[type=minecraft:armor_stand, tag=storage_lumberjack] remove storage_lumberjack
tag @e[type=minecraft:armor_stand, nbt={HandItems: [{id: "minecraft:wooden_axe"}]}] add storage_lumberjack

execute as @s at @e[tag=storage_lumberjack, sort=nearest, limit=1] unless block ^ ^ ^ minecraft:hopper{Items: [{Slot: 4b}]} run function atomic_automaton:lumberjack/routine
