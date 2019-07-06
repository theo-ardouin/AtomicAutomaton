tag @e[type=minecraft:armor_stand, tag=storage_miner] remove storage_miner
tag @e[type=minecraft:armor_stand, nbt={HandItems: [{id: "minecraft:wooden_pickaxe"}]}] add storage_miner

execute as @s at @e[tag=storage_miner, sort=nearest, limit=1] unless block ^ ^ ^ minecraft:hopper{Items: [{Slot: 4b}]} run function atomic_automaton:miner/routine
