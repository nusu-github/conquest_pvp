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
effect give @a instant_health 1 100
effect give @a regeneration 1 255
effect give @a resistance 1 255

# コンクエスト時のみリスポーンはランダムな同じチームからリスポン
# 相手側にポイント増加
execute if score conquest conquest matches 1 run tp 120 134 0
execute if score conquest conquest matches 1 run tp @s[team=red] @a[team=red,scores={respawn_time=-1},sort=random,limit=1]
execute if score conquest conquest matches 1 run tp @s[team=blue] @a[team=blue,scores={respawn_time=-1},sort=random,limit=1]
execute if score conquest conquest matches 1 run tp @s[team=red] @e[scores={red=250},sort=random,limit=1]
execute if score conquest conquest matches 1 run tp @s[team=blue] @e[scores={blue=250},sort=random,limit=1]
execute if score conquest conquest matches 1 as @s[team=red] run scoreboard players add ブルーチーム total_point 500
execute if score conquest conquest matches 1 as @s[team=blue] run scoreboard players add レッドチーム total_point 500
execute as @s run function conquest_pvp:conquest/re_setup
