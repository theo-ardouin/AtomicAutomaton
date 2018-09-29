scoreboard objectives add aa_moved dummy
scoreboard objectives add aa_move_elapsed dummy
scoreboard objectives add aa_blocks dummy

function atomic_automaton:farmer/load
function atomic_automaton:lumberjack/load
function atomic_automaton:miner/load

say [AtomicAutomaton] Loaded
