# Update lumberjack tag
tag @e[type=minecraft:armor_stand, nbt={ HandItems: [ {id: "minecraft:diamond_axe"} ] }, tag=!aa_move] add aa_move
tag @e[type=minecraft:armor_stand, nbt={ HandItems: [ {id: "minecraft:diamond_axe"} ] }, tag=!aa_lumberjack] add aa_lumberjack
tag @e[type=minecraft:armor_stand, nbt=!{ HandItems: [ {id: "minecraft:diamond_axe"} ] }, tag=aa_lumberjack] remove aa_lumberjack

execute at @e[tag=aa_lumberjack, scores={ aa_moved=1 }] if block ^ ^ ^ minecraft:oak_log run function atomic_automaton:lumberjack/oak
execute at @e[tag=aa_lumberjack, scores={ aa_moved=1 }] if block ^ ^ ^ minecraft:birch_log run function atomic_automaton:lumberjack/birch
execute at @e[tag=aa_lumberjack, scores={ aa_moved=1 }] if block ^ ^ ^ minecraft:spruce_log run function atomic_automaton:lumberjack/spruce
execute at @e[tag=aa_lumberjack, scores={ aa_moved=1 }] if block ^ ^ ^ minecraft:jungle_log run function atomic_automaton:lumberjack/jungle
