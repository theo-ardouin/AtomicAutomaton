# Update dig tag
execute as @e[tag=!aa_dig, scores={ aa_moved=1 }] at @s if block ^ ^ ^ minecraft:sign{ Text1: "{\"text\":\"DIG\"}" } run function atomic_automaton:digger/create

# 11x11: 121 blocks
execute as @e[tag=aa_dig, scores={ aa_moved=1, aa_blocks=121 }] at @s run function atomic_automaton:level/destroy
execute as @e[tag=aa_dig, scores={ aa_moved=1, aa_blocks=121 }] at @s run teleport @s ^ ^ ^ facing ^1 ^ ^

# 121 + 11 - 1
execute as @e[tag=aa_dig, scores={ aa_moved=1, aa_blocks=131 }] at @s run teleport @s ^ ^ ^ facing ^1 ^ ^

# 121 + 11 - 1 + 11 / 2
execute as @e[tag=aa_dig, scores={ aa_moved=1, aa_blocks=136 }] at @s run teleport @s ^ ^ ^ facing ^1 ^ ^

execute as @e[tag=aa_dig, scores={ aa_moved=1, aa_blocks=141 }] at @s run function atomic_automaton:level/create
execute as @e[tag=aa_dig, scores={ aa_moved=1, aa_blocks=141 }] at @s run teleport @s ~ ~-2 ~
execute as @e[tag=aa_dig, scores={ aa_moved=1, aa_blocks=141 }] at @s run scoreboard players set @s aa_blocks 1
