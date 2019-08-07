# If block in front, add tag
# This tag is used to move
execute if block ^ ^ ^1 #atomic_automaton:breakable run tag @s add block
execute if block ^ ^1 ^1 #atomic_automaton:breakable run tag @s add block

execute as @s at @s run function atomic_automaton:leveler/level
execute as @s at @s run function atomic_automaton:leveler/move

tag @s remove block
