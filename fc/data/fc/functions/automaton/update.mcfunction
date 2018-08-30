# Give arms to armor stands
data merge entity @e[type=minecraft:armor_stand, nbt={ ShowArms: 0b }, limit=1] { ShowArms: 1b, NoGravity: 1b }

# Remove move status if no item in hands
tag @e[type=minecraft:armor_stand, nbt=!{ HandItems: [ { Count: 1b } ] }, tag=move] remove move

# Update move elapsed
scoreboard players add @e[tag=move] fc_move_elapsed 1

# Set as moved every 30 ticks
scoreboard players set @e[tag=move, scores={ fc_move_elapsed=30.. }] fc_moved 1

# Move forward
execute at @e[tag=move, scores={ fc_moved=1 }] as @e[tag=move, scores={ fc_moved=1 }] run teleport ^0 ^0 ^1

# Change direction
# 90
execute at @e[tag=move, scores={ fc_moved=1 }] as @e[tag=move, scores={ fc_moved=1 }] if block ~ ~-2 ~ minecraft:oak_planks run teleport @s ^ ^ ^ facing ^-1 ^ ^
# -90
execute at @e[tag=move, scores={ fc_moved=1 }] as @e[tag=move, scores={ fc_moved=1 }] if block ~ ~-2 ~ minecraft:birch_planks run teleport @s ^ ^ ^ facing ^1 ^ ^
# 180
execute at @e[tag=move, scores={ fc_moved=1 }] as @e[tag=move, scores={ fc_moved=1 }] if block ~ ~-2 ~ minecraft:spruce_planks run teleport @s ^ ^ ^ facing ^ ^ ^-1

# Reset elapsed
scoreboard players set @e[tag=move, scores={ fc_moved=1 }] fc_move_elapsed 0

# Call every type of automaton
function fc:automaton/miner/update
function fc:automaton/farmer/update

# Reset moved status
scoreboard players set @e[tag=move, scores={ fc_moved=1 }] fc_moved 0
