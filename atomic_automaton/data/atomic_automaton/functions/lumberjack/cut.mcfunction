loot spawn ^ ^ ^ mine ^ ^ ^1 mainhand

# Plant if tree and block below
execute at @s as @s unless block ^ ^-1 ^1 #atomic_automaton:hollow run function atomic_automaton:lumberjack/plant

execute at @s as @s if block ^ ^-1 ^1 #atomic_automaton:hollow run setblock ^ ^ ^1 minecraft:air replace

teleport ^ ^1 ^
