tag @s remove player

# Check if player within 3x3 chunks
execute if entity @p[dx=48,dz=48,dy=256] run tag @s add player
execute if entity @p[dx=48,dz=-48,dy=256] run tag @s add player
execute if entity @p[dx=-48,dz=48,dy=256] run tag @s add player
execute if entity @p[dx=-48,dz=-48,dy=256] run tag @s add player

execute if entity @s[tag=player, tag=miner] as @s at @s run function atomic_automaton:miner/update
execute if entity @s[tag=player, tag=farmer] as @s at @s run function atomic_automaton:farmer/update
