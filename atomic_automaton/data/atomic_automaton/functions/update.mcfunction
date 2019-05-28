tag @s remove player

# Check if player within 3x3 chunks
# 1 chunk = 1 blocks
execute if entity @p[dx=48, dy=128, dz=48] run tag @s add player
execute if entity @p[dx=48, dy=-128, dz=48] run tag @s add player

execute if entity @p[dx=48, dy=128, dz=-48] run tag @s add player
execute if entity @p[dx=48, dy=-128, dz=-48] run tag @s add player

execute if entity @p[dx=-48, dy=128, dz=48] run tag @s add player
execute if entity @p[dx=-48, dy=-128, dz=48] run tag @s add player

execute if entity @p[dx=-48, dy=128, dz=-48] run tag @s add player
execute if entity @p[dx=-48, dy=-128, dz=-48] run tag @s add player

# Run if player around and dropper
execute if entity @s[tag=player, tag=miner] if entity @e[tag=dropper] as @s at @s run function atomic_automaton:miner/update
execute if entity @s[tag=player, tag=farmer] if entity @e[tag=dropper] as @s at @s run function atomic_automaton:farmer/update
execute if entity @s[tag=player, tag=lumberjack] if entity @e[tag=dropper] as @s at @s run function atomic_automaton:lumberjack/update
