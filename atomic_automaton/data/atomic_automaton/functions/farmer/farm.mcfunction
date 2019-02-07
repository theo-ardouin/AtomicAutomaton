execute at @s as @s if block ^ ^ ^1 minecraft:melon run loot spawn ^ ^ ^ mine ^ ^ ^1 mainhand
execute at @s as @s if block ^ ^ ^1 minecraft:melon run setblock ^ ^ ^1 minecraft:air replace

execute at @s as @s if block ^ ^ ^1 minecraft:pumpkin run loot spawn ^ ^ ^ mine ^ ^ ^1 mainhand
execute at @s as @s if block ^ ^ ^1 minecraft:pumpkin run setblock ^ ^ ^1 minecraft:air replace

execute at @s as @s if block ^ ^1 ^1 minecraft:sugar_cane run loot spawn ^ ^ ^ mine ^ ^1 ^1 mainhand
execute at @s as @s if block ^ ^1 ^1 minecraft:sugar_cane run setblock ^ ^1 ^1 minecraft:air replace

execute at @s as @s if block ^ ^ ^1 minecraft:wheat[age=7] run loot spawn ^ ^ ^ mine ^ ^ ^1 mainhand
execute at @s as @s if block ^ ^ ^1 minecraft:wheat[age=7] run setblock ^ ^ ^1 minecraft:wheat replace

execute at @s as @s if block ^ ^ ^1 minecraft:carrots[age=7] run loot spawn ^ ^ ^ mine ^ ^ ^1 mainhand
execute at @s as @s if block ^ ^ ^1 minecraft:carrots[age=7] run setblock ^ ^ ^1 minecraft:carrots replace

execute at @s as @s if block ^ ^ ^1 minecraft:potatoes[age=7] run loot spawn ^ ^ ^ mine ^ ^ ^1 mainhand
execute at @s as @s if block ^ ^ ^1 minecraft:potatoes[age=7] run setblock ^ ^ ^1 minecraft:potatoes replace

execute at @s as @s if block ^ ^ ^1 minecraft:beetroots[age=3] run loot spawn ^ ^ ^ mine ^ ^ ^1 mainhand
execute at @s as @s if block ^ ^ ^1 minecraft:beetroots[age=3] run setblock ^ ^ ^1 minecraft:beetroots replace

execute at @s as @s if block ^ ^ ^1 minecraft:sweet_berry_bush[age=3] run loot spawn ^ ^ ^ mine ^ ^ ^1 mainhand
execute at @s as @s if block ^ ^ ^1 minecraft:sweet_berry_bush[age=3] run setblock ^ ^ ^1 minecraft:sweet_berry_bush[age=1] replace

execute at @s as @s if block ^ ^1 ^1 minecraft:cactus run loot spawn ^ ^ ^ mine ^ ^1 ^1 mainhand
execute at @s as @s if block ^ ^1 ^1 minecraft:cactus run setblock ^ ^1 ^1 minecraft:air replace

function atomic_automaton:farmer/dropper
