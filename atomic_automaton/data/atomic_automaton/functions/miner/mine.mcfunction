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

function atomic_automaton:miner/store
