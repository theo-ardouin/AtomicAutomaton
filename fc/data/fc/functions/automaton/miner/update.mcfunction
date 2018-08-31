# Update miner tag
tag @e[type=minecraft:armor_stand, nbt={ HandItems: [ {id: "minecraft:diamond_pickaxe"} ] }, tag=!fc_move] add fc_move
tag @e[type=minecraft:armor_stand, nbt={ HandItems: [ {id: "minecraft:diamond_pickaxe"} ] }, tag=!fc_miner] add fc_miner
tag @e[type=minecraft:armor_stand, nbt=!{ HandItems: [ {id: "minecraft:diamond_pickaxe"} ] }, tag=fc_miner] remove fc_miner

execute at @e[tag=fc_miner, scores={ fc_moved=1 }] run function fc:automaton/mine
