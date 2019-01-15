scoreboard objectives add move_elapsed dummy

function atomic_automaton:miner/load

# On reload, wait 10 seconds before running everything
scoreboard players set @e[tag=move] move_elapsed -200

say <AtomicAutomaton> Loaded
