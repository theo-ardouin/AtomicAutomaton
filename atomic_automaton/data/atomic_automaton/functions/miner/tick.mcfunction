execute as @e[type=minecraft:armor_stand, nbt={HandItems: [{id: "minecraft:diamond_pickaxe"}]}, tag=!miner] run function atomic_automaton:miner/create
tag @e[type=minecraft:armor_stand, nbt=!{HandItems: [{id: "minecraft:diamond_pickaxe"}]}, tag=miner] remove miner

tag @e[tag=miner, tag=!move] add move
