execute as @s[team=blue] at @s run effect give @a[team=blue,distance=..6] resistance 1 2
execute as @s[team=red] at @s run effect give @a[team=red,distance=..6] resistance 1 2
scoreboard players remove @s used_shield 1
title @s actionbar [{"text":"エネルギー"},{"score":{"name":"@s","objective":"used_shield"}}]
