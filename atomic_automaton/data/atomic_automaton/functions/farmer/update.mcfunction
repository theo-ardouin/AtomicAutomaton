execute as @s at @e[tag=dropper, sort=nearest, limit=1] unless block ^ ^ ^ minecraft:hopper{Items: [{Slot: 4b}]} run function atomic_automaton:farmer/routine
