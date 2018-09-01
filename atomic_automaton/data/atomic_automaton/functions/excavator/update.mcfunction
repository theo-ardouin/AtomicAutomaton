# Update excavator tag
tag @e[type=minecraft:armor_stand, nbt={ HandItems: [ {id: "minecraft:diamond_shovel"} ] }, tag=!aa_move] add aa_move
tag @e[type=minecraft:armor_stand, nbt={ HandItems: [ {id: "minecraft:diamond_shovel"} ] }, tag=!aa_excavator] add aa_excavator
tag @e[type=minecraft:armor_stand, nbt=!{ HandItems: [ {id: "minecraft:diamond_shovel"} ] }, tag=aa_excavator] remove aa_excavator

# After breaking N blocks, stops
tag @e[tag=aa_excavator, scores={ aa_blocks=120.. }] remove aa_move

execute at @e[tag=aa_excavator, scores={ aa_moved=1 }] run function atomic_automaton:mine

# Set count to 1
scoreboard players set @e[tag=aa_excavator, scores={ aa_moved=1, aa_blocks=1 }] aa_exca_count 1

# Add 1 to forward
scoreboard players add @e[tag=aa_excavator, scores={ aa_moved=1 }] aa_exca_frwd 1

# If went 2 times right, add 1 to count and reset direction
scoreboard players add @e[tag=aa_excavator, scores={ aa_moved=1, aa_exca_dir=2 }] aa_exca_count 1 
scoreboard players set @e[tag=aa_excavator, scores={ aa_moved=1, aa_exca_dir=2 }] aa_exca_dir 0

# Set aa_exca_tmp to forward
scoreboard players operation @e[tag=aa_excavator, scores={ aa_moved=1 }] aa_exca_tmp = @e[tag=aa_excavator, scores={ aa_moved=1 }] aa_exca_frwd

# If forward is equals to count, change direction and set forward to 0
scoreboard players operation @e[tag=aa_excavator, scores={ aa_moved=1 }] aa_exca_tmp -= @e[tag=aa_excavator, scores={ aa_moved=1 }] aa_exca_count
scoreboard players add @e[tag=aa_excavator, scores={ aa_moved=1, aa_exca_tmp=0 }] aa_exca_dir 1
scoreboard players set @e[tag=aa_excavator, scores={ aa_moved=1, aa_exca_tmp=0 }] aa_exca_frwd 0
execute at @e[tag=aa_excavator, scores={ aa_moved=1, aa_exca_tmp=0 }] as @e[tag=aa_excavator, scores={ aa_moved=1, aa_exca_tmp=0 }] run teleport @s ^ ^ ^ facing ^1 ^ ^
