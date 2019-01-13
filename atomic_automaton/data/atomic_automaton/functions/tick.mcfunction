# Give arms to armor stands
data merge entity @e[type=minecraft:armor_stand, nbt={ShowArms: 0b}, limit=1] {ShowArms: 1b}

# Update move status
tag @e[type=minecraft:armor_stand, nbt={HandItems: [{id: "minecraft:diamond_pickaxe"}]}, tag=!move] add move
tag @e[type=minecraft:armor_stand, nbt=!{HandItems: [{id: "minecraft:diamond_pickaxe"}]}, tag=move] remove move

# Update miner status
tag @e[type=minecraft:armor_stand, nbt={HandItems: [{tag: {display: {Name: "{\"text\":\"miner\"}"}}}]}, tag=move, tag=!miner] add miner
tag @e[type=minecraft:armor_stand, nbt=!{HandItems: [{tag: {display: {Name: "{\"text\":\"miner\"}"}}}]}, tag=miner] remove miner

# Update farmer status
tag @e[type=minecraft:armor_stand, nbt={HandItems: [{tag: {display: {Name: "{\"text\":\"farmer\"}"}}}]}, tag=move, tag=!farmer] add farmer
tag @e[type=minecraft:armor_stand, nbt=!{HandItems: [{tag: {display: {Name: "{\"text\":\"farmer\"}"}}}]}, tag=farmer] remove farmer

# Update armor stand nbt tags
data merge entity @e[type=minecraft:armor_stand, nbt={Invulnerable: 0b}, tag=move, limit=1] {Invulnerable: 1b, NoGravity: 1b}
data merge entity @e[type=minecraft:armor_stand, nbt={Invulnerable: 1b}, tag=!move, limit=1] {Invulnerable: 0b, NoGravity: 0b}

# Update move elapsed
scoreboard players add @e[tag=move] move_elapsed 1

# Move every 20 ticks
execute as @e[tag=move, scores={move_elapsed=20..}] at @s run function atomic_automaton:update

# Reset move_elapsed to 0
scoreboard players reset @e[scores={move_elapsed=20..}] move_elapsed
