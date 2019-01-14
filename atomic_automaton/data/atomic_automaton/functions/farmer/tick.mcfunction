tag @e[type=minecraft:armor_stand, nbt={HandItems: [{id: "minecraft:diamond_hoe"}]}, tag=!farmer] add farmer
tag @e[type=minecraft:armor_stand, nbt=!{HandItems: [{id: "minecraft:diamond_hoe"}]}, tag=farmer] remove farmer

tag @e[tag=farmer, tag=!move] add move
