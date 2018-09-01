# Update farmer tag
tag @e[type=minecraft:armor_stand, nbt={ HandItems: [ {id: "minecraft:diamond_hoe"} ] }, tag=!aa_move] add aa_move
tag @e[type=minecraft:armor_stand, nbt={ HandItems: [ {id: "minecraft:diamond_hoe"} ] }, tag=!aa_farmer] add aa_farmer
tag @e[type=minecraft:armor_stand, nbt=!{ HandItems: [ {id: "minecraft:diamond_hoe"} ] }, tag=aa_farmer] remove aa_farmer

# TODO Use tags once I understand how they works...

# Farming
execute at @e[tag=aa_farmer, scores={ aa_moved=1 }] if block ^ ^ ^1 minecraft:melon run fill ^ ^ ^ ^ ^ ^1 minecraft:air destroy
execute at @e[tag=aa_farmer, scores={ aa_moved=1 }] if block ^ ^ ^1 minecraft:pumpkin run fill ^ ^ ^ ^ ^ ^1 minecraft:air destroy
execute at @e[tag=aa_farmer, scores={ aa_moved=1 }] if block ^ ^1 ^1 minecraft:sugar_cane run fill ^ ^1 ^ ^ ^1 ^1 minecraft:air destroy

# TODO Wheat, carrot and potatoes
