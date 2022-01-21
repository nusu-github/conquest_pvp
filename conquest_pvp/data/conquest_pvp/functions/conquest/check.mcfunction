# コンクエスト用チェック

## リスポーン処理
execute as @a if score @s death matches 1.. if score @s respawn_time matches -1 run function conquest_pvp:respawn/respawn
execute as @a[scores={death=1..}] unless entity @s[x=135,y=114,z=74,dx=12,dy=-5,dz=9] run tp @s 141 111 78

## スキル用
execute as @a run function conquest_pvp:conquest/skill
execute as @a run function conquest_pvp:conquest/special_skill
execute as @a[scores={recharge=1}] run function conquest_pvp:conquest/recharge

## プレイヤー人数計算
function conquest_pvp:conquest/player_count

## 拠点
#### 複数処理
### レッド
execute as @a[team=red,x=96,y=123,z=24,dx=8,dy=20,dz=-8] run execute as @e[tag=northeast] run function conquest_pvp:conquest/red_helper
execute as @a[team=red,x=144,y=123,z=24,dx=-8,dy=20,dz=-8] run execute as @e[tag=northwest] run function conquest_pvp:conquest/red_helper
execute as @a[team=red,x=96,y=123,z=-24,dx=8,dy=20,dz=8] run execute as @e[tag=southeast] run function conquest_pvp:conquest/red_helper
execute as @a[team=red,x=144,y=123,z=-24,dx=-8,dy=20,dz=8] run execute as @e[tag=southwest] run function conquest_pvp:conquest/red_helper
### ブルー
execute as @a[team=blue,x=96,y=123,z=24,dx=8,dy=20,dz=-8] run execute as @e[tag=northeast] run function conquest_pvp:conquest/blue_helper
execute as @a[team=blue,x=144,y=123,z=24,dx=-8,dy=20,dz=-8] run execute as @e[tag=northwest] run function conquest_pvp:conquest/blue_helper
execute as @a[team=blue,x=96,y=123,z=-24,dx=8,dy=20,dz=8] run execute as @e[tag=southeast] run function conquest_pvp:conquest/blue_helper
execute as @a[team=blue,x=144,y=123,z=-24,dx=-8,dy=20,dz=8] run execute as @e[tag=southwest] run function conquest_pvp:conquest/blue_helper
#### 単独処理
### レッド
execute as @e[tag=northeast] at @s run function conquest_pvp:conquest/red
execute as @e[tag=northwest] at @s run function conquest_pvp:conquest/red
execute as @e[tag=southeast] at @s run function conquest_pvp:conquest/red
execute as @e[tag=southwest] at @s run function conquest_pvp:conquest/red
### ブルー
execute as @e[tag=northeast] at @s run function conquest_pvp:conquest/blue
execute as @e[tag=northwest] at @s run function conquest_pvp:conquest/blue
execute as @e[tag=southeast] at @s run function conquest_pvp:conquest/blue
execute as @e[tag=southwest] at @s run function conquest_pvp:conquest/blue

## トータルポイント換算
execute if score @e[tag=northeast,limit=1] red matches 250 run scoreboard players add レッドチーム total_point 1
execute if score @e[tag=northwest,limit=1] red matches 250 run scoreboard players add レッドチーム total_point 1
execute if score @e[tag=southeast,limit=1] red matches 250 run scoreboard players add レッドチーム total_point 1
execute if score @e[tag=southwest,limit=1] red matches 250 run scoreboard players add レッドチーム total_point 1
execute if score @e[tag=northeast,limit=1] blue matches 250 run scoreboard players add ブルーチーム total_point 1
execute if score @e[tag=northwest,limit=1] blue matches 250 run scoreboard players add ブルーチーム total_point 1
execute if score @e[tag=southeast,limit=1] blue matches 250 run scoreboard players add ブルーチーム total_point 1
execute if score @e[tag=southwest,limit=1] blue matches 250 run scoreboard players add ブルーチーム total_point 1
execute if score red_count red_count > blue_count blue_count run scoreboard players add ブルーチーム total_point 1
execute if score red_count red_count < blue_count blue_count run scoreboard players add レッドチーム total_point 1

## 片付け
execute as @e[type=item,nbt=!{Item: {id: "minecraft:potion"}}] run data modify entity @s PickupDelay set value 0d
execute as @e[type=item,nbt={Item: {id: "minecraft:potion"}}] run data modify entity @s PickupDelay set value 60d
execute as @e[type=spectral_arrow] run data modify entity @s pickup set value 0b
execute as @e[type=arrow] run data modify entity @s pickup set value 0d
kill @e[type=item,nbt={Item: {id: "minecraft:poppy"}}]
kill @e[type=item,nbt={Item: {id: "minecraft:iron_ingot"}}]

## アイテム処理
function conquest_pvp:conquest/item_check

## ポーション処理
item replace entity @a[scores={used_potion=1..}] hotbar.7 with air 1

## 表示
bossbar set red_total_point name [{"text":"レッドチーム "},{"score":{"name":"レッドチーム","objective":"total_point"}},{"text":"/50000"}]
bossbar set blue_total_point name [{"text":"ブルーチーム "},{"score":{"name":"ブルーチーム","objective":"total_point"}},{"text":"/50000"}]
execute store result bossbar red_total_point value run scoreboard players get レッドチーム total_point
execute store result bossbar blue_total_point value run scoreboard players get ブルーチーム total_point
bossbar set red_total_point players @a
bossbar set blue_total_point players @a

## 勝敗判定
execute if score レッドチーム total_point matches 50000.. run function conquest_pvp:conquest/end
execute if score ブルーチーム total_point matches 50000.. run function conquest_pvp:conquest/end
execute if score レッドチーム total_point matches 25000.. if score レッドチーム item matches 0 run function conquest_pvp:conquest/item
execute if score ブルーチーム total_point matches 25000.. if score ブルーチーム item matches 0 run function conquest_pvp:conquest/item

## ハンデ処理
scoreboard players operation レッドチーム error = レッドチーム total_point
scoreboard players operation ブルーチーム error = ブルーチーム total_point
scoreboard players operation ブルーチーム error -= レッドチーム total_point
scoreboard players operation レッドチーム error -= ブルーチーム total_point
execute if score レッドチーム error matches 10000.. run effect give @a[team=blue] speed 1 1
execute if score ブルーチーム error matches 10000.. run effect give @a[team=red] speed 1 1
execute if score レッドチーム error matches 10000.. run effect give @a[team=blue] resistance 1 1
execute if score ブルーチーム error matches 10000.. run effect give @a[team=red] resistance 1 1
execute if score レッドチーム error matches 10000.. run effect give @a[team=blue] jump_boost 1 1
execute if score ブルーチーム error matches 10000.. run effect give @a[team=red] jump_boost 1 1
execute if score レッドチーム error matches 10000.. run scoreboard players add ブルーチーム total_point 1
execute if score ブルーチーム error matches 10000.. run scoreboard players add レッドチーム total_point 1
