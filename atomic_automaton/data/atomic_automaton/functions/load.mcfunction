scoreboard objectives add aa_moved dummy
scoreboard objectives add aa_move_elapsed dummy
scoreboard objectives add aa_blocks dummy

function atomic_automaton:miner/load
function atomic_automaton:farmer/load
function atomic_automaton:excavator/load

say [AtomicAutomaton] Loaded
