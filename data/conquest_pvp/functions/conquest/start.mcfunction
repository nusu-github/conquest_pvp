scoreboard players set conquest conquest 1
scoreboard players reset @a used_stick
scoreboard players reset @a used_shield
scoreboard players reset @a used_crossbow
tp @a[team=red] 100 126 20
tp @a[team=blue] 140 126 -20
execute as @s[scores={assassin=1}] run function conquest_pvp:conquest/job/assassin
execute as @s[scores={attacker=1}] run function conquest_pvp:conquest/job/attacker
execute as @s[scores={tank=1}] run function conquest_pvp:conquest/job/tank
execute as @s[scores={archer=1}] run function conquest_pvp:conquest/job/archer
execute as @s[scores={support=1}] run function conquest_pvp:conquest/job/support
replaceitem entity @a[team=red] hotbar.8 red_stained_glass_pane 1
replaceitem entity @a[team=blue] hotbar.8 blue_stained_glass_pane 1
title @a title {"text":"ゲームスタート！"}
effect clear @a
kill @e[tag=30_timer]