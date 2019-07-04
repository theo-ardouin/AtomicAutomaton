tag @s remove hasPlayer

# Check if player within 4x4 chunks
# 1 chunk = 16 blocks
execute if entity @p[dx=64, dy=128, dz=64] run tag @s add hasPlayer
execute if entity @p[dx=64, dy=-128, dz=64] run tag @s add hasPlayer

execute if entity @p[dx=64, dy=128, dz=-64] run tag @s add hasPlayer
execute if entity @p[dx=64, dy=-128, dz=-64] run tag @s add hasPlayer

execute if entity @p[dx=-64, dy=128, dz=64] run tag @s add hasPlayer
execute if entity @p[dx=-64, dy=-128, dz=64] run tag @s add hasPlayer

execute if entity @p[dx=-64, dy=128, dz=-64] run tag @s add hasPlayer
execute if entity @p[dx=-64, dy=-128, dz=-64] run tag @s add hasPlayer

# Run if player nearby and dropper exists
execute if entity @s[tag=hasPlayer, tag=miner] if entity @e[tag=dropper] as @s at @s run function atomic_automaton:miner/update
execute if entity @s[tag=hasPlayer, tag=farmer] if entity @e[tag=dropper] as @s at @s run function atomic_automaton:farmer/update
execute if entity @s[tag=hasPlayer, tag=lumberjack] if entity @e[tag=dropper] as @s at @s run function atomic_automaton:lumberjack/update
