scoreboard players set conquest conquest 1
scoreboard players set @a used_stick 0
scoreboard players set @a used_shield 0
scoreboard players set @a used_crossbow 0
scoreboard players set @a recharge 0
scoreboard players set @a tick 0
scoreboard players set @a seconds 0
scoreboard players set @a sneak 0
scoreboard players set @a sneak_time 0
tp @a[team=red] 100 126 20
tp @a[team=blue] 140 126 -20
execute as @a[scores={assassin=1}] run function conquest_pvp:conquest/job/assassin
execute as @a[scores={attacker=1}] run function conquest_pvp:conquest/job/attacker
execute as @a[scores={tank=1}] run function conquest_pvp:conquest/job/tank
execute as @a[scores={archer=1}] run function conquest_pvp:conquest/job/archer
execute as @a[scores={support=1}] run function conquest_pvp:conquest/job/support
replaceitem entity @a[team=red] hotbar.8 red_stained_glass_pane 1
replaceitem entity @a[team=blue] hotbar.8 blue_stained_glass_pane 1
title @a title {"text":"ゲームスタート！"}
effect clear @a
kill @e[tag=30_timer]