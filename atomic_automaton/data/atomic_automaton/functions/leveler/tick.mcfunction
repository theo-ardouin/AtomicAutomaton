tag @e[type=minecraft:armor_stand, nbt={HandItems: [{id: "minecraft:diamond_shovel"}]}, tag=!leveler] add leveler
tag @e[type=minecraft:armor_stand, nbt=!{HandItems: [{id: "minecraft:diamond_shovel"}]}, tag=leveler] remove leveler

tag @e[tag=leveler, tag=!move] add move
