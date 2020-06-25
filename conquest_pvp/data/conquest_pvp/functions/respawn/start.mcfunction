title @s title {"text":"リスポーンしました！"}
scoreboard players set @s target 0
scoreboard players set @s death 0
scoreboard players set @s respawn_time -1
scoreboard players set @s seconds 0
scoreboard players set @s used_crossbow 0
scoreboard players set @s used_stick 0
scoreboard players set @s used_shield 0
scoreboard players set @s used_potion 0
scoreboard players set @s recharge 0
scoreboard players set @s tick 0
effect clear @s
replaceitem entity @s armor.head air 1
effect give @s regeneration 1 255

#コンクエスト時のみリスポーンはランダムな同じチームからリスポン
execute if score conquest conquest matches 1 run tp 120 134 0
execute if score conquest conquest matches 1 run tp @s[team=red] @e[scores={red=250},sort=nearest,limit=1]
execute if score conquest conquest matches 1 run tp @s[team=blue] @e[scores={blue=250},sort=nearest,limit=1]
execute if score conquest conquest matches 1 as @s[team=red] run scoreboard players add ブルーチーム total_point 1500
execute if score conquest conquest matches 1 as @s[team=blue] run scoreboard players add レッドチーム total_point 1500
execute as @s run function conquest_pvp:conquest/re_setup