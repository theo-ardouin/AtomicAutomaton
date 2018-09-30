# Update level tag
execute as @e[tag=!aa_level, scores={ aa_moved=1 }] at @s if block ^ ^ ^ minecraft:sign{ Text1: "{\"text\":\"LEVEL\"}" } run function atomic_automaton:level/create

# Incr forward
scoreboard players add @e[tag=aa_level, scores={ aa_moved=1 }] aa_lvl_frwd 1

# Set tmp to forward
scoreboard players operation @e[tag=aa_level, scores={ aa_moved=1 }] aa_tmp = @e[tag=aa_level, scores={ aa_moved=1 }] aa_lvl_frwd

# If tmp (forward) > count
scoreboard players operation @e[tag=aa_level, scores={ aa_moved=1 }] aa_tmp -= @e[tag=aa_level, scores={ aa_moved=1 }] aa_lvl_count
scoreboard players add @e[tag=aa_level, scores={ aa_moved=1, aa_tmp=1 }] aa_lvl_dir 1
scoreboard players set @e[tag=aa_level, scores={ aa_moved=1, aa_tmp=1 }] aa_lvl_frwd 0
execute as @e[tag=aa_level, scores={ aa_moved=1, aa_tmp=1 }] at @s run teleport @s ^ ^ ^ facing ^1 ^ ^

# If went 2 times right, add 1 to count and reset direction
scoreboard players add @e[tag=aa_level, scores={ aa_moved=1, aa_lvl_dir=2 }] aa_lvl_count 1 
scoreboard players set @e[tag=aa_level, scores={ aa_moved=1, aa_lvl_dir=2 }] aa_lvl_dir 0

execute as @e[tag=aa_level, scores={ aa_moved=1 }] at @s run setblock ^ ^-1 ^ minecraft:stone
