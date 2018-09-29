# Give arms to armor stands
data merge entity @e[type=minecraft:armor_stand, nbt={ ShowArms: 0b }, limit=1] { ShowArms: 1b }

# Update move status
tag @e[type=minecraft:armor_stand, nbt={ HandItems: [ {id: "minecraft:diamond_pickaxe"} ] }, tag=!aa_move] add aa_move
tag @e[type=minecraft:armor_stand, nbt=!{ HandItems: [ {id: "minecraft:diamond_pickaxe"} ] }, tag=aa_move] remove aa_move

# Update armor stand nbt tags
data merge entity @e[type=minecraft:armor_stand, nbt={ Invulnerable: 0b }, tag=aa_move, limit=1] { Invulnerable: 1b, NoGravity: 1b }
data merge entity @e[type=minecraft:armor_stand, nbt={ Invulnerable: 1b }, tag=!aa_move, limit=1] { Invulnerable: 0b, NoGravity: 0b }

# Update move elapsed
scoreboard players add @e[tag=aa_move] aa_move_elapsed 1

# Set as moved every 30 ticks
scoreboard players set @e[tag=aa_move, scores={ aa_move_elapsed=30.. }] aa_moved 1

# Move forward
execute at @e[scores={ aa_moved=1 }] as @e[scores={ aa_moved=1 }] run teleport ^ ^ ^1
scoreboard players add @e[scores={ aa_moved=1 }] aa_blocks 1

# RIGHT
execute at @e[scores={ aa_moved=1 }] as @e[scores={ aa_moved=1 }] if block ~ ~-2 ~ minecraft:sign{ Text1: "{\"text\":\"RIGHT\"}" } run teleport @s ^ ^ ^ facing ^-1 ^ ^
execute at @e[scores={ aa_moved=1 }] as @e[scores={ aa_moved=1 }] if block ~ ~-2 ~ minecraft:wall_sign{ Text1: "{\"text\":\"RIGHT\"}" } run teleport @s ^ ^ ^ facing ^-1 ^ ^
# LEFT
execute at @e[scores={ aa_moved=1 }] as @e[scores={ aa_moved=1 }] if block ~ ~-2 ~ minecraft:sign{ Text1: "{\"text\":\"LEFT\"}" } run teleport @s ^ ^ ^ facing ^1 ^ ^
execute at @e[scores={ aa_moved=1 }] as @e[scores={ aa_moved=1 }] if block ~ ~-2 ~ minecraft:wall_sign{ Text1: "{\"text\":\"LEFT\"}" } run teleport @s ^ ^ ^ facing ^1 ^ ^
# UTURN
execute at @e[scores={ aa_moved=1 }] as @e[scores={ aa_moved=1 }] if block ~ ~-2 ~ minecraft:sign{ Text1: "{\"text\":\"UTURN\"}" } run teleport @s ^ ^ ^ facing ^ ^ ^-1
execute at @e[scores={ aa_moved=1 }] as @e[scores={ aa_moved=1 }] if block ~ ~-2 ~ minecraft:wall_sign{ Text1: "{\"text\":\"UTURN\"}" } run teleport @s ^ ^ ^ facing ^ ^ ^-1
# UP
execute at @e[scores={ aa_moved=1 }] as @e[scores={ aa_moved=1 }] if block ~ ~-2 ~ minecraft:sign{ Text1: "{\"text\":\"UP\"}" } run teleport @s ^ ^1 ^
execute at @e[scores={ aa_moved=1 }] as @e[scores={ aa_moved=1 }] if block ~ ~-2 ~ minecraft:wall_sign{ Text1: "{\"text\":\"UP\"}" } run teleport @s ^ ^1 ^
# DOWN
execute at @e[scores={ aa_moved=1 }] as @e[scores={ aa_moved=1 }] if block ~ ~-2 ~ minecraft:sign{ Text1: "{\"text\":\"DOWN\"}" } run teleport @s ^ ^-1 ^
execute at @e[scores={ aa_moved=1 }] as @e[scores={ aa_moved=1 }] if block ~ ~-2 ~ minecraft:wall_sign{ Text1: "{\"text\":\"DOWN\"}" } run teleport @s ^ ^-1 ^

# Reset elapsed
scoreboard players set @e[scores={ aa_moved=1 }] aa_move_elapsed 0

# Call every type of automaton
function atomic_automaton:farmer/update
function atomic_automaton:lumberjack/update

# Reset moved status
scoreboard players set @e[scores={ aa_moved=1 }] aa_moved 0
