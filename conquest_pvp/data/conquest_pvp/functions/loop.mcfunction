#ティックごとの処理

# リスポーン場所を常に設定し続ける　絶対重いのでどうにかしたい所存
execute unless score conquest conquest matches 1 as @a at @s run spawnpoint @s ~ ~ ~
effect give @a saturation 1 1
# リスポーン
execute if score conquest conquest matches 1 as @a if score @s death matches 1.. if score @s respawn_time matches -1 run function conquest_pvp:respawn/respawn
execute if score conquest conquest matches 1 as @a[scores={death=1..}] unless entity @s[x=135,y=114,z=74,dx=12,dy=-5,dz=9] run tp @s 141 111 78
effect give @a[x=135,y=114,z=74,dx=12,dy=-5,dz=9] instant_health 1 100
effect give @a[x=135,y=114,z=74,dx=12,dy=-5,dz=9] resistance 1 100
# 拘束
execute as @e if score @s target matches 1 run function conquest_pvp:target
# コンクエストモード時コンクエスト用のチェックを実行
execute if score conquest conquest matches 1 run function conquest_pvp:conquest/check

# チーム加入
#team leave @a[x=-13,y=4,z=-13,dx=27,dy=1,dz=27]
team join red @a[x=12,y=4,z=-12,dx=-4,dy=1,dz=6]
team join blue @a[x=12,y=4,z=12,dx=-4,dy=1,dz=-6]

# 会場にご案内
tp @e[x=0,z=-11,dx=2,dz=1] 120 110 72

# タイマー
execute as @e[tag=30_timer] run function conquest_pvp:time
execute as @e[tag=30_timer] run title @a actionbar [{"text":"残り時間:"},{"score":{"name":"@e[tag=30_timer]","objective":"seconds"}},{"text":"/30"}]
execute if score @e[tag=30_timer,limit=1,scores={tick=..5}] seconds matches 27.. run title @a title {"text":"3秒前"}
execute if score @e[tag=30_timer,limit=1,scores={tick=..5}] seconds matches 28.. run title @a title {"text":"2"}
execute if score @e[tag=30_timer,limit=1,scores={tick=..5}] seconds matches 29.. run title @a title {"text":"1"}
execute if score @e[tag=30_timer,limit=1,scores={tick=..5}] seconds matches 30.. run function conquest_pvp:conquest/start

