# Update farmer tag
tag @e[type=minecraft:armor_stand, nbt={ HandItems: [ {id: "minecraft:diamond_hoe"} ] }, tag=!aa_move] add aa_move
tag @e[type=minecraft:armor_stand, nbt={ HandItems: [ {id: "minecraft:diamond_hoe"} ] }, tag=!aa_farmer] add aa_farmer
tag @e[type=minecraft:armor_stand, nbt=!{ HandItems: [ {id: "minecraft:diamond_hoe"} ] }, tag=aa_farmer] remove aa_farmer

# Farming
execute at @e[tag=aa_farmer, scores={ aa_moved=1 }] if block ^ ^ ^1 minecraft:melon run setblock ^ ^ ^1 minecraft:air destroy
execute at @e[tag=aa_farmer, scores={ aa_moved=1 }] if block ^ ^ ^1 minecraft:pumpkin run setblock ^ ^ ^1 minecraft:air destroy
execute at @e[tag=aa_farmer, scores={ aa_moved=1 }] if block ^ ^1 ^1 minecraft:sugar_cane run setblock ^ ^1 ^1 minecraft:air destroy
execute at @e[tag=aa_farmer, scores={ aa_moved=1 }] if block ^ ^ ^1 minecraft:wheat[age=7] run setblock ^ ^ ^1 minecraft:wheat destroy
execute at @e[tag=aa_farmer, scores={ aa_moved=1 }] if block ^ ^ ^1 minecraft:carrots[age=7] run setblock ^ ^ ^1 minecraft:carrots destroy
execute at @e[tag=aa_farmer, scores={ aa_moved=1 }] if block ^ ^ ^1 minecraft:potatoes[age=7] run setblock ^ ^ ^1 minecraft:potatoes destroy
