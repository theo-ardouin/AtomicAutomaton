# Update excavator tag
tag @e[type=minecraft:armor_stand, nbt={ HandItems: [ {id: "minecraft:diamond_shovel"} ] }, tag=!fc_move] add fc_move
tag @e[type=minecraft:armor_stand, nbt={ HandItems: [ {id: "minecraft:diamond_shovel"} ] }, tag=!fc_excavator] add fc_excavator
tag @e[type=minecraft:armor_stand, nbt=!{ HandItems: [ {id: "minecraft:diamond_shovel"} ] }, tag=fc_excavator] remove fc_excavator

# After breaking N blocks, stops
tag @e[tag=fc_excavator, scores={ fc_blocks=120.. }] remove fc_move

execute at @e[tag=fc_excavator, scores={ fc_moved=1 }] run function fc:automaton/mine

# Set count to 1
scoreboard players set @e[tag=fc_excavator, scores={ fc_moved=1, fc_blocks=1 }] fc_exca_count 1

# Add 1 to forward
scoreboard players add @e[tag=fc_excavator, scores={ fc_moved=1 }] fc_exca_frwd 1

# If went 2 times right, add 1 to count and reset direction
scoreboard players add @e[tag=fc_excavator, scores={ fc_moved=1, fc_exca_dir=2 }] fc_exca_count 1 
scoreboard players set @e[tag=fc_excavator, scores={ fc_moved=1, fc_exca_dir=2 }] fc_exca_dir 0

# Set fc_exca_tmp to forward
scoreboard players operation @e[tag=fc_excavator, scores={ fc_moved=1 }] fc_exca_tmp = @e[tag=fc_excavator, scores={ fc_moved=1 }] fc_exca_frwd

# If forward is equals to count, change direction and set forward to 0
scoreboard players operation @e[tag=fc_excavator, scores={ fc_moved=1 }] fc_exca_tmp -= @e[tag=fc_excavator, scores={ fc_moved=1 }] fc_exca_count
scoreboard players add @e[tag=fc_excavator, scores={ fc_moved=1, fc_exca_tmp=0 }] fc_exca_dir 1
scoreboard players set @e[tag=fc_excavator, scores={ fc_moved=1, fc_exca_tmp=0 }] fc_exca_frwd 0
execute at @e[tag=fc_excavator, scores={ fc_moved=1, fc_exca_tmp=0 }] as @e[tag=fc_excavator, scores={ fc_moved=1, fc_exca_tmp=0 }] run teleport @s ^ ^ ^ facing ^1 ^ ^
