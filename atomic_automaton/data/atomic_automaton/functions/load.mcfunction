scoreboard objectives add move_elapsed dummy
scoreboard objectives add blocks dummy

# On reload, wait 5 seconds before running everything
scoreboard players set @e[tag=move] move_elapsed -100

say <AtomicAutomaton> Loaded
