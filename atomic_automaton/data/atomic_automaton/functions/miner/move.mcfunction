teleport ^ ^ ^1

#execute as @s[scores={blocks=100}] run teleport @s ^ ^ ^ facing ^ ^ ^-1
#execute as @s[scores={blocks=200}] run teleport @s ^ ^ ^ facing ^-1 ^ ^
#execute as @s[scores={blocks=202}] run teleport @s ^ ^ ^ facing ^-1 ^ ^
#execute as @s[scores={blocks=202}] run scoreboard players set @s blocks 0

execute as @s[scores={blocks=49}] run teleport @s ^ ^ ^ facing ^-1 ^ ^
execute as @s[scores={blocks=51}] run teleport @s ^ ^ ^ facing ^-1 ^ ^
execute as @s[scores={blocks=101}] run teleport @s ^ ^ ^ facing ^1 ^ ^
execute as @s[scores={blocks=103}] run teleport @s ^ ^ ^ facing ^1 ^ ^

execute as @s[scores={blocks=103}] run scoreboard players set @s blocks -1

scoreboard players add @s blocks 1
