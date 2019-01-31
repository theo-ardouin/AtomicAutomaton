execute at @s as @s if block ^ ^ ^1 #minecraft:logs run function atomic_automaton:lumberjack/cut

execute at @s as @s unless block ^ ^ ^1 #minecraft:logs if block ^ ^-1 ^ #atomic_automaton:hollow run teleport ^ ^-1 ^
execute at @s as @s unless block ^ ^ ^1 #minecraft:logs if block ^ ^-1 ^ #minecraft:logs run teleport ^ ^-1 ^

execute at @s as @s unless block ^ ^-1 ^ #atomic_automaton:hollow run function atomic_automaton:slabs_move

function atomic_automaton:lumberjack/dropper
