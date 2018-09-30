# Update 
execute as @e[tag=!aa_automine, scores={ aa_moved=1 }] at @s if block ^ ^ ^ minecraft:sign{ Text1: "{\"text\":\"AUTOMINE\"}" } run tag @s add aa_automine

execute as @e[tag=aa_automine, scores={ aa_moved=1, aa_blocks=100 }] at @s run teleport @s ^ ^ ^ facing ^ ^ ^-1

execute as @e[tag=aa_automine, scores={ aa_moved=1, aa_blocks=200 }] at @s run teleport @s ^ ^ ^ facing ^-1 ^ ^
execute as @e[tag=aa_automine, scores={ aa_moved=1, aa_blocks=202 }] at @s run teleport @s ^ ^ ^ facing ^-1 ^ ^
execute as @e[tag=aa_automine, scores={ aa_moved=1, aa_blocks=202 }] at @s run scoreboard players set @s aa_blocks 0
