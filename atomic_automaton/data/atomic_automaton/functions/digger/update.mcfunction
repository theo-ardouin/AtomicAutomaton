# Update dig tag
# execute as @e[tag=!aa_dig, scores={ aa_moved=1 }] at @s if block ^ ^ ^ minecraft:sign{ Text1: "{\"text\":\"DIG\"}" } run function atomic_automaton:digger/create

execute as @e[tag=aa_dig, scores={ aa_moved=1, aa_blocks=9.. }] at @s run function atomic_automaton:digger/dig
