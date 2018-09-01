# Update miner tag
tag @e[type=minecraft:armor_stand, nbt={ HandItems: [ {id: "minecraft:diamond_pickaxe"} ] }, tag=!aa_move] add aa_move
tag @e[type=minecraft:armor_stand, nbt={ HandItems: [ {id: "minecraft:diamond_pickaxe"} ] }, tag=!aa_miner] add aa_miner
tag @e[type=minecraft:armor_stand, nbt=!{ HandItems: [ {id: "minecraft:diamond_pickaxe"} ] }, tag=aa_miner] remove aa_miner

execute at @e[tag=aa_miner, scores={ aa_moved=1 }] run function atomic_automaton:mine
