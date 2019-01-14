execute at @s as @s if block ^ ^2 ^1 #atomic_automaton:miner run loot spawn ^ ^ ^ mine ^ ^2 ^1 mainhand
execute at @s as @s if block ^ ^2 ^1 #atomic_automaton:miner run setblock ^ ^2 ^1 minecraft:air replace

execute at @s as @s if block ^ ^1 ^1 #atomic_automaton:breakable run setblock ^ ^1 ^1 minecraft:air destroy

execute at @s as @s if block ^ ^1 ^1 #atomic_automaton:miner run loot spawn ^ ^ ^ mine ^ ^1 ^1 mainhand
execute at @s as @s if block ^ ^1 ^1 #atomic_automaton:miner run setblock ^ ^1 ^1 minecraft:air replace

execute at @s as @s if block ^ ^ ^1 #atomic_automaton:breakable run setblock ^ ^ ^1 minecraft:air destroy

execute at @s as @s if block ^ ^ ^1 #atomic_automaton:miner run loot spawn ^ ^ ^ mine ^ ^ ^1 mainhand
execute at @s as @s if block ^ ^ ^1 #atomic_automaton:miner run setblock ^ ^ ^1 minecraft:air replace

execute at @s as @s if block ^ ^-1 ^1 #atomic_automaton:miner run loot spawn ^ ^ ^ mine ^ ^-1 ^1 mainhand
execute at @s as @s if block ^ ^-1 ^1 #atomic_automaton:miner run setblock ^ ^-1 ^1 minecraft:air replace

teleport @e[type=item, nbt={Item: {id: "minecraft:coal"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:coal_ore"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:iron_ore"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:gold_ore"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:redstone"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:redstone_ore"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:lapis_lazuli"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:lapis_ore"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:emerald"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:emerald_ore"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:diamond"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:diamond_ore"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
