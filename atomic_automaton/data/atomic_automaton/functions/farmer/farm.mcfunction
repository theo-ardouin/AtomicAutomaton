execute at @s if block ^ ^ ^1 minecraft:melon run loot replace entity @e[type=minecraft:hopper_minecart,limit=1,sort=nearest] container.0 mine ^ ^ ^1
execute at @s if block ^ ^ ^1 minecraft:melon run setblock ^ ^ ^1 minecraft:air replace

execute at @s if block ^ ^ ^1 minecraft:pumpkin run loot replace entity @e[type=minecraft:hopper_minecart,limit=1,sort=nearest] container.0 mine ^ ^ ^1
execute at @s if block ^ ^ ^1 minecraft:pumpkin run setblock ^ ^ ^1 minecraft:air replace

execute at @s if block ^ ^1 ^1 minecraft:sugar_cane run loot replace entity @e[type=minecraft:hopper_minecart,limit=1,sort=nearest] container.0 mine ^ ^1 ^1
execute at @s if block ^ ^1 ^1 minecraft:sugar_cane run setblock ^ ^1 ^1 minecraft:air replace
execute at @s if block ^ ^2 ^1 minecraft:sugar_cane run loot replace entity @e[type=minecraft:hopper_minecart,limit=1,sort=nearest] container.1 mine ^ ^2 ^1
execute at @s if block ^ ^2 ^1 minecraft:sugar_cane run setblock ^ ^2 ^1 minecraft:air replace

execute at @s if block ^ ^ ^1 minecraft:wheat[age=7] run loot replace entity @e[type=minecraft:hopper_minecart,limit=1,sort=nearest] container.0 mine ^ ^ ^1
execute at @s if block ^ ^ ^1 minecraft:wheat[age=7] run setblock ^ ^ ^1 minecraft:wheat replace

execute at @s if block ^ ^ ^1 minecraft:carrots[age=7] run loot replace entity @e[type=minecraft:hopper_minecart,limit=1,sort=nearest] container.0 mine ^ ^ ^1
execute at @s if block ^ ^ ^1 minecraft:carrots[age=7] run setblock ^ ^ ^1 minecraft:carrots replace

execute at @s if block ^ ^ ^1 minecraft:potatoes[age=7] run loot replace entity @e[type=minecraft:hopper_minecart,limit=1,sort=nearest] container.0 mine ^ ^ ^1
execute at @s if block ^ ^ ^1 minecraft:potatoes[age=7] run setblock ^ ^ ^1 minecraft:potatoes replace

execute at @s if block ^ ^ ^1 minecraft:beetroots[age=3] run loot replace entity @e[type=minecraft:hopper_minecart,limit=1,sort=nearest] container.0 mine ^ ^ ^1
execute at @s if block ^ ^ ^1 minecraft:beetroots[age=3] run setblock ^ ^ ^1 minecraft:beetroots replace
