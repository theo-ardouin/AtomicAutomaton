execute at @s if block ^ ^1 ^1 #atomic_automaton:miner run loot replace entity @e[type=minecraft:hopper_minecart,limit=1,sort=nearest] container.0 mine ^ ^1 ^1
execute at @s if block ^ ^1 ^1 #atomic_automaton:miner run setblock ^ ^1 ^1 minecraft:air replace

execute at @s if block ^ ^ ^1 #atomic_automaton:miner run loot replace entity @e[type=minecraft:hopper_minecart,limit=1,sort=nearest] container.1 mine ^ ^ ^1
execute at @s if block ^ ^ ^1 #atomic_automaton:miner run setblock ^ ^ ^1 minecraft:air replace

execute at @s if block ^ ^-1 ^1 #atomic_automaton:miner run loot replace entity @e[type=minecraft:hopper_minecart,limit=1,sort=nearest] container.2 mine ^ ^-1 ^1
execute at @s if block ^ ^-1 ^1 #atomic_automaton:miner run setblock ^ ^-1 ^1 minecraft:air replace

execute at @s if block ^ ^1 ^1 #atomic_automaton:breakable run setblock ^ ^1 ^1 minecraft:air destroy
execute at @s if block ^ ^ ^1 #atomic_automaton:breakable run setblock ^ ^ ^1 minecraft:air destroy
execute at @s if block ^ ^-1 ^1 #atomic_automaton:breakable run setblock ^ ^-1 ^1 minecraft:air destroy
