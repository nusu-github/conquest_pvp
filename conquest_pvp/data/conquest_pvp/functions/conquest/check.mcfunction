# コンクエスト用チェック
# 重いのでいつかどうにかしたい

### スキル用
execute as @a run function conquest_pvp:conquest/skill
execute as @a[scores={recharge=1}] run function conquest_pvp:conquest/recharge

## 拠点
### レッド
execute as @e[tag=northeast] if entity @a[team=red,x=96,y=123,z=24,dx=8,dy=20,dz=-8] run function conquest_pvp:conquest/red
execute as @e[tag=northwest] if entity @a[team=red,x=144,y=123,z=24,dx=-8,dy=20,dz=-8] run function conquest_pvp:conquest/red
execute as @e[tag=southeast] if entity @a[team=red,x=96,y=123,z=-24,dx=8,dy=20,dz=8] run function conquest_pvp:conquest/red
execute as @e[tag=southwest] if entity @a[team=red,x=144,y=123,z=-24,dx=-8,dy=20,dz=8] run function conquest_pvp:conquest/red
### ブルー
execute as @e[tag=northeast] if entity @a[team=blue,x=96,y=123,z=24,dx=8,dy=20,dz=-8] run function conquest_pvp:conquest/blue
execute as @e[tag=northwest] if entity @a[team=blue,x=144,y=123,z=24,dx=-8,dy=20,dz=-8] run function conquest_pvp:conquest/blue
execute as @e[tag=southeast] if entity @a[team=blue,x=96,y=123,z=-24,dx=8,dy=20,dz=8] run function conquest_pvp:conquest/blue
execute as @e[tag=southwest] if entity @a[team=blue,x=144,y=123,z=-24,dx=-8,dy=20,dz=8] run function conquest_pvp:conquest/blue

### トータルポイント換算
execute if score @e[tag=northeast,limit=1] red matches 250.. run scoreboard players add レッドチーム total_point 1
execute if score @e[tag=northwest,limit=1] red matches 250.. run scoreboard players add レッドチーム total_point 1
execute if score @e[tag=southeast,limit=1] red matches 250.. run scoreboard players add レッドチーム total_point 1
execute if score @e[tag=southwest,limit=1] red matches 250.. run scoreboard players add レッドチーム total_point 1
scoreboard players add レッドチーム total_point 1
execute if score @e[tag=northeast,limit=1] blue matches 250.. run scoreboard players add ブルーチーム total_point 1
execute if score @e[tag=northwest,limit=1] blue matches 250.. run scoreboard players add ブルーチーム total_point 1
execute if score @e[tag=southeast,limit=1] blue matches 250.. run scoreboard players add ブルーチーム total_point 1
execute if score @e[tag=southwest,limit=1] blue matches 250.. run scoreboard players add ブルーチーム total_point 1
scoreboard players add ブルーチーム total_point 1

execute as @e[type=item,nbt=!{Item: {id: "minecraft:potion"}}] run data modify entity @s PickupDelay set value 0d
execute as @e[type=item,nbt={Item: {id: "minecraft:potion"}}] run data modify entity @s PickupDelay set value 60d
data modify entity @e[type=spectral_arrow,nbt={pickup: 1b},limit=1] pickup set value 0b
data modify entity @e[type=arrow,nbt={pickup: 1b},limit=1] pickup set value 0b
kill @e[type=item,nbt={Item: {id: "minecraft:poppy"}}]
kill @e[type=item,nbt={Item: {id: "minecraft:iron_ingot"}}]
function conquest_pvp:conquest/item_check
# 使ったら消去
replaceitem entity @a[scores={used_potion=1..}] hotbar.7 air 1

bossbar set red_total_point players @a
bossbar set blue_total_point players @a
execute store result bossbar red_total_point value run scoreboard players get レッドチーム total_point
execute store result bossbar blue_total_point value run scoreboard players get ブルーチーム total_point
bossbar set red_total_point name [{"text":"レッドチーム "},{"score":{"name":"レッドチーム","objective":"total_point"}},{"text":"/50000"}]
bossbar set blue_total_point name [{"text":"ブルーチーム "},{"score":{"name":"ブルーチーム","objective":"total_point"}},{"text":"/50000"}]
execute store result bossbar minecraft:villagerhp value run data get entity @e[tag=testHP,limit=1] Health 1
execute if score レッドチーム total_point matches 50000.. run function conquest_pvp:conquest/end
execute if score ブルーチーム total_point matches 50000.. run function conquest_pvp:conquest/end

execute if score レッドチーム total_point matches 25000.. if score レッドチーム item matches 0 run function conquest_pvp:conquest/item
execute if score ブルーチーム total_point matches 25000.. if score ブルーチーム item matches 0 run function conquest_pvp:conquest/item

scoreboard players operation レッドチーム error = レッドチーム total_point
scoreboard players operation ブルーチーム error = ブルーチーム total_point
scoreboard players operation ブルーチーム error -= レッドチーム total_point
scoreboard players operation レッドチーム error -= ブルーチーム total_point
execute if score レッドチーム error matches 10000.. run effect give @a[team=blue] speed 1 3
execute if score ブルーチーム error matches 10000.. run effect give @a[team=red] speed 1 3
execute if score レッドチーム error matches 10000.. run effect give @a[team=blue] resistance 1 1
execute if score ブルーチーム error matches 10000.. run effect give @a[team=red] resistance 1 1
execute if score レッドチーム error matches 10000.. run effect give @a[team=blue] jump_boost 1 1
execute if score ブルーチーム error matches 10000.. run effect give @a[team=red] jump_boost 1 1
