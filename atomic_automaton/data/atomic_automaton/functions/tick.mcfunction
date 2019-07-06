# Give arms to armor stands
data merge entity @e[type=minecraft:armor_stand, nbt={ShowArms: 0b}, limit=1] {ShowArms: 1b}

function atomic_automaton:miner/tick
function atomic_automaton:farmer/tick
function atomic_automaton:lumberjack/tick

# Cannot move if no item in hand
tag @e[type=minecraft:armor_stand, nbt=!{HandItems: [{Count: 1b}]}, tag=move] remove move

# Update armor stand nbt tags
data merge entity @e[type=minecraft:armor_stand, nbt={Invulnerable: 0b}, tag=move, limit=1] {Invulnerable: 1b, NoGravity: 1b}
data merge entity @e[type=minecraft:armor_stand, nbt={Invulnerable: 1b}, tag=!move, limit=1] {Invulnerable: 0b, NoGravity: 0b}

# Update move elapsed
scoreboard players add @e[tag=move] move_elapsed 1

# Move every 15 ticks
execute as @e[tag=move, scores={move_elapsed=15..}] at @s run function atomic_automaton:update

# Reset move_elapsed to 0
scoreboard players reset @e[scores={move_elapsed=15..}] move_elapsed
