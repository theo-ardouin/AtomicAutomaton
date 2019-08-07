# If block in front of leveler
execute if entity @s[tag=block] run teleport ^ ^ ^1

# Otherwise, if block on the left
execute unless entity @s[tag=block] if block ^1 ^ ^ #atomic_automaton:breakable run teleport @s ^ ^ ^ facing ^1 ^ ^
# Otherwise, if block on the right
execute unless entity @s[tag=block] if block ^-1 ^ ^ #atomic_automaton:breakable run teleport @s ^ ^ ^ facing ^-1 ^ ^
