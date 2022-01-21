# ティックごとの処理

## リスポーン場所を常に設定し続ける
execute unless score conquest conquest matches 1 as @a at @s run spawnpoint @s ~ ~ ~

## 空腹にならないようにする
effect give @a[nbt=!{foodLevel: 20}] saturation 1 50 true

## 人数を表示
scoreboard players set total_count total_count 0
execute as @a run scoreboard players add total_count total_count 1
bossbar set status players @a
execute if score conquest conquest matches 1 run bossbar set status visible false
execute unless score conquest conquest matches 1 run bossbar set status visible true

## リスポーン場所に変なものがないようにする
kill @e[x=135,y=114,z=74,dx=12,dy=-5,dz=9,type=!player]

## コンクエストモード時コンクエスト用のチェックを実行
execute if score conquest conquest matches 1 run function conquest_pvp:conquest/check

## チーム加入
# team leave @a[x=-13,y=4,z=-13,dx=27,dy=1,dz=27]
team join red @a[x=12,y=4,z=-12,dx=-4,dy=1,dz=6]
team join blue @a[x=12,y=4,z=12,dx=-4,dy=1,dz=-6]

## 会場にご案内
tp @e[x=0,z=-11,dx=2,dz=1] 120 110 72

## タイマー
execute as @e[tag=30_timer] run function conquest_pvp:time
scoreboard players operation @e[tag=30_timer] count_down -= @e[tag=30_timer] seconds
execute as @e[tag=30_timer,scores={seconds=1..}] run scoreboard players set @s seconds 0
execute as @e[tag=30_timer] run title @a actionbar [{"text":"残り:"},{"score":{"name":"@e[tag=30_timer,limit=1]","objective":"count_down"}},{"text":"秒"}]
execute if score @e[tag=30_timer,limit=1,scores={tick=..5}] count_down matches 3 run title @a title {"text":"3秒前"}
execute if score @e[tag=30_timer,limit=1,scores={tick=..5}] count_down matches 2 run title @a title {"text":"2"}
execute if score @e[tag=30_timer,limit=1,scores={tick=..5}] count_down matches 1 run title @a title {"text":"1"}
execute if score @e[tag=30_timer,limit=1,scores={tick=..5}] count_down matches 0 run function conquest_pvp:conquest/start
