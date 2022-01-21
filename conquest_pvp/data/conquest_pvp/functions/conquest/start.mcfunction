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
execute as @a[team=!] at @s run function conquest_pvp:conquest/re_setup
title @a title {"text":"ゲームスタート！"}
say 勝利しろ！
effect clear @a
kill @e[tag=30_timer]
