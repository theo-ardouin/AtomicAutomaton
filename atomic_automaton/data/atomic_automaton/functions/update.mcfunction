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

# Set as moved every 15 ticks (0.75s)
scoreboard players set @e[tag=aa_move, scores={ aa_move_elapsed=15.. }] aa_moved 1

# RIGHT
execute as @e[scores={ aa_moved=1 }] at @s if block ^ ^-2 ^ minecraft:sign{ Text1: "{\"text\":\"RIGHT\"}" } run teleport @s ^ ^ ^ facing ^-1 ^ ^
execute as @e[scores={ aa_moved=1 }] at @s if block ^ ^-2 ^ minecraft:wall_sign{ Text1: "{\"text\":\"RIGHT\"}" } run teleport @s ^ ^ ^ facing ^-1 ^ ^
execute as @e[scores={ aa_moved=1 }] at @s if block ^ ^ ^ minecraft:sign{ Text1: "{\"text\":\"RIGHT\"}" } run teleport @s ^ ^ ^ facing ^-1 ^ ^
# LEFT
execute as @e[scores={ aa_moved=1 }] at @s if block ^ ^-2 ^ minecraft:sign{ Text1: "{\"text\":\"LEFT\"}" } run teleport @s ^ ^ ^ facing ^1 ^ ^
execute as @e[scores={ aa_moved=1 }] at @s if block ^ ^-2 ^ minecraft:wall_sign{ Text1: "{\"text\":\"LEFT\"}" } run teleport @s ^ ^ ^ facing ^1 ^ ^
execute as @e[scores={ aa_moved=1 }] at @s if block ^ ^ ^ minecraft:sign{ Text1: "{\"text\":\"LEFT\"}" } run teleport @s ^ ^ ^ facing ^1 ^ ^
# UTURN
execute as @e[scores={ aa_moved=1 }] at @s if block ^ ^-2 ^ minecraft:sign{ Text1: "{\"text\":\"UTURN\"}" } run teleport @s ^ ^ ^ facing ^ ^ ^-1
execute as @e[scores={ aa_moved=1 }] at @s if block ^ ^-2 ^ minecraft:wall_sign{ Text1: "{\"text\":\"UTURN\"}" } run teleport @s ^ ^ ^ facing ^ ^ ^-1
execute as @e[scores={ aa_moved=1 }] at @s if block ^ ^ ^ minecraft:sign{ Text1: "{\"text\":\"UTURN\"}" } run teleport @s ^ ^ ^ facing ^ ^ ^-1
# UP
execute as @e[scores={ aa_moved=1 }] at @s if block ^ ^-2 ^ minecraft:sign{ Text1: "{\"text\":\"UP\"}" } run teleport @s ^ ^1 ^
execute as @e[scores={ aa_moved=1 }] at @s if block ^ ^-2 ^ minecraft:wall_sign{ Text1: "{\"text\":\"UP\"}" } run teleport @s ^ ^1 ^
execute as @e[scores={ aa_moved=1 }] at @s if block ^ ^ ^ minecraft:sign{ Text1: "{\"text\":\"UP\"}" } run teleport @s ^ ^1 ^
# DOWN
execute as @e[scores={ aa_moved=1 }] at @s if block ^ ^-2 ^ minecraft:sign{ Text1: "{\"text\":\"DOWN\"}" } run teleport @s ^ ^-1 ^
execute as @e[scores={ aa_moved=1 }] at @s if block ^ ^-2 ^ minecraft:wall_sign{ Text1: "{\"text\":\"DOWN\"}" } run teleport @s ^ ^-1 ^
execute as @e[scores={ aa_moved=1 }] at @s if block ^ ^ ^ minecraft:sign{ Text1: "{\"text\":\"DOWN\"}" } run teleport @s ^ ^-1 ^
# STOP
execute as @e[tag=aa_move] at @s if block ^ ^ ^ minecraft:sign{ Text1: "{\"text\":\"STOP\"}" } run scoreboard players set @s aa_move_elapsed 0
# Bedrock is STOP
execute as @e[tag=aa_move] at @s if block ^ ^ ^1 minecraft:bedrock run scoreboard players set @s aa_move_elapsed 0
execute as @e[tag=aa_move] at @s if block ^ ^1 ^1 minecraft:bedrock run scoreboard players set @s aa_move_elapsed 0

# Reset elapsed
scoreboard players set @e[scores={ aa_moved=1 }] aa_move_elapsed 0

# Call every type of automaton
function atomic_automaton:farmer/update
function atomic_automaton:lumberjack/update
function atomic_automaton:digger/update
function atomic_automaton:level/update
function atomic_automaton:automining/update
function atomic_automaton:miner/update

# Move forward
execute as @e[scores={ aa_moved=1 }] at @s run teleport ^ ^ ^1
scoreboard players add @e[scores={ aa_moved=1 }] aa_blocks 1

# Reset moved status
scoreboard players set @e[scores={ aa_moved=1 }] aa_moved 0
