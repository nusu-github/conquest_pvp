
xp add @s -3
execute at @s run particle block lever ~ ~ ~ 0 0 0 1 100 normal
execute at @s[team=blue] run effect give @a[team=blue,distance=..5] resistance 1 3
execute at @s[team=red] run effect give @a[team=red,distance=..5] resistance 1 3
scoreboard players set @s sneak 0