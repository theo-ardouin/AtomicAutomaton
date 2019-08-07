tag @s remove has_player

# Check if player within 4x4 chunks
# 1 chunk = 16 blocks
execute if entity @p[dx=64, dy=128, dz=64] run tag @s add has_player
execute if entity @p[dx=64, dy=-128, dz=64] run tag @s add has_player

execute if entity @p[dx=64, dy=128, dz=-64] run tag @s add has_player
execute if entity @p[dx=64, dy=-128, dz=-64] run tag @s add has_player

execute if entity @p[dx=-64, dy=128, dz=64] run tag @s add has_player
execute if entity @p[dx=-64, dy=-128, dz=64] run tag @s add has_player

execute if entity @p[dx=-64, dy=128, dz=-64] run tag @s add has_player
execute if entity @p[dx=-64, dy=-128, dz=-64] run tag @s add has_player

# Run if player nearby
execute if entity @s[tag=has_player, tag=miner] as @s at @s run function atomic_automaton:miner/update
execute if entity @s[tag=has_player, tag=farmer] as @s at @s run function atomic_automaton:farmer/update
execute if entity @s[tag=has_player, tag=lumberjack] as @s at @s run function atomic_automaton:lumberjack/update
execute if entity @s[tag=has_player, tag=leveler] as @s at @s run function atomic_automaton:leveler/update
