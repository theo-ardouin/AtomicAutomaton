execute at @s as @s if block ^ ^ ^1 minecraft:melon run loot spawn ^ ^ ^ mine ^ ^ ^1 mainhand
execute at @s as @s if block ^ ^ ^1 minecraft:melon run setblock ^ ^ ^1 minecraft:air replace

execute at @s as @s if block ^ ^ ^1 minecraft:pumpkin run loot spawn ^ ^ ^ mine ^ ^ ^1 mainhand
execute at @s as @s if block ^ ^ ^1 minecraft:pumpkin run setblock ^ ^ ^1 minecraft:air replace

execute at @s as @s if block ^ ^1 ^1 minecraft:sugar_cane run loot spawn ^ ^ ^ mine ^ ^1 ^1 mainhand
execute at @s as @s if block ^ ^1 ^1 minecraft:sugar_cane run setblock ^ ^1 ^1 minecraft:air replace
execute at @s as @s if block ^ ^2 ^1 minecraft:sugar_cane run loot spawn ^ ^ ^ mine ^ ^2 ^1 mainhand
execute at @s as @s if block ^ ^2 ^1 minecraft:sugar_cane run setblock ^ ^2 ^1 minecraft:air replace

execute at @s as @s if block ^ ^ ^1 minecraft:wheat[age=7] run loot spawn ^ ^ ^ mine ^ ^ ^1 mainhand
execute at @s as @s if block ^ ^ ^1 minecraft:wheat[age=7] run setblock ^ ^ ^1 minecraft:wheat replace

execute at @s as @s if block ^ ^ ^1 minecraft:carrots[age=7] run loot spawn ^ ^ ^ mine ^ ^ ^1 mainhand
execute at @s as @s if block ^ ^ ^1 minecraft:carrots[age=7] run setblock ^ ^ ^1 minecraft:carrots replace

execute at @s as @s if block ^ ^ ^1 minecraft:potatoes[age=7] run loot spawn ^ ^ ^ mine ^ ^ ^1 mainhand
execute at @s as @s if block ^ ^ ^1 minecraft:potatoes[age=7] run setblock ^ ^ ^1 minecraft:potatoes replace

execute at @s as @s if block ^ ^ ^1 minecraft:beetroots[age=3] run loot spawn ^ ^ ^ mine ^ ^ ^1 mainhand
execute at @s as @s if block ^ ^ ^1 minecraft:beetroots[age=3] run setblock ^ ^ ^1 minecraft:beetroots replace

teleport @e[type=item, nbt={Item: {id: "minecraft:pumpkin"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:melon"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:melon_slice"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:sugar_cane"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:wheat_seeds"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:wheat"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:carrot"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:potato"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:beetroot"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
teleport @e[type=item, nbt={Item: {id: "minecraft:beetroot_seeds"}}, distance=..2] @e[tag=drop, sort=nearest, limit=1]
