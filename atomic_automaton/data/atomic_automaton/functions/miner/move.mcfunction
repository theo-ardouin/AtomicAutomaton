teleport ^ ^ ^1

scoreboard players add @s forward 1

# Set tmp to forward
scoreboard players operation @s tmp = @s forward

# If tmp (forward) > count
scoreboard players operation @s tmp -= @s count
scoreboard players add @s[scores={tmp=1}] dir 1
scoreboard players set @s[scores={tmp=1}] forward 0
execute as @s[scores={tmp=1}] at @s run teleport @s ^ ^ ^ facing ^1 ^ ^

# If went 2 times right, add 1 to count and reset direction
scoreboard players add @s[scores={dir=2}] count 1 
scoreboard players set @s[scores={dir=2}] dir 0
