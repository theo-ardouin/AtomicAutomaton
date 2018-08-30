# Update miner tag
tag @e[type=minecraft:armor_stand, nbt={ HandItems: [ {id: "minecraft:diamond_pickaxe"} ] }, tag=!move] add move
tag @e[type=minecraft:armor_stand, nbt={ HandItems: [ {id: "minecraft:diamond_pickaxe"} ] }, tag=!miner] add miner
tag @e[type=minecraft:armor_stand, nbt=!{ HandItems: [ {id: "minecraft:diamond_pickaxe"} ] }, tag=miner] remove miner

# Mine
execute at @e[tag=miner, scores={ fc_moved=1 }] run fill ^ ^ ^ ^ ^1 ^1 minecraft:air destroy
