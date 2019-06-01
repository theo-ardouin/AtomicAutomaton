tag @s remove player

# Check if player within 4x4 chunks
# 1 chunk = 16 blocks
execute if entity @p[dx=64, dy=128, dz=64] run tag @s add player
execute if entity @p[dx=64, dy=-128, dz=64] run tag @s add player

execute if entity @p[dx=64, dy=128, dz=-64] run tag @s add player
execute if entity @p[dx=64, dy=-128, dz=-64] run tag @s add player

execute if entity @p[dx=-64, dy=128, dz=64] run tag @s add player
execute if entity @p[dx=-64, dy=-128, dz=64] run tag @s add player

execute if entity @p[dx=-64, dy=128, dz=-64] run tag @s add player
execute if entity @p[dx=-64, dy=-128, dz=-64] run tag @s add player

# Run if player around and dropper
execute if entity @s[tag=player, tag=miner] if entity @e[tag=dropper] as @s at @s run function atomic_automaton:miner/update
execute if entity @s[tag=player, tag=farmer] if entity @e[tag=dropper] as @s at @s run function atomic_automaton:farmer/update
execute if entity @s[tag=player, tag=lumberjack] if entity @e[tag=dropper] as @s at @s run function atomic_automaton:lumberjack/update
