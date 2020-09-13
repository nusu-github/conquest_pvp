say チーム戦が選択されました。ゲーム開始の準備を行っています...

## AECを置いて占領しているかどうかの判定をする
# 一回全部消す
kill @e[type=area_effect_cloud]
# 北東
summon area_effect_cloud 100 126 20 {NoGravity: 1b, Duration: 32768, Tags: ["northeast"]}
# 北西
summon area_effect_cloud 140 126 20 {NoGravity: 1b, Duration: 32768, Tags: ["northwest"]}
# 南東
summon area_effect_cloud 100 126 -20 {NoGravity: 1b, Duration: 32768, Tags: ["southeast"]}
# 南西
summon area_effect_cloud 140 126 -20 {NoGravity: 1b, Duration: 32768, Tags: ["southwest"]}

## 拠点状態のリセット

# 北東
fill 96 123 24 104 123 16 red_concrete replace
fill 101 123 19 99 123 21 diamond_block replace
setblock 100 125 20 red_stained_glass
# 北西
fill 144 123 24 136 123 16 white_concrete replace
fill 141 123 21 139 123 19 diamond_block replace
setblock 140 125 20 air
# 南東
fill 96 123 -24 104 123 -16 white_concrete replace
fill 101 123 -19 99 123 -21 diamond_block replace
setblock 100 125 -20 air
# 南西
fill 144 123 -24 136 123 -16 blue_concrete replace
fill 141 123 -21 139 123 -19 diamond_block replace
setblock 140 125 -20 blue_stained_glass

scoreboard objectives setdisplay belowName kill_count
scoreboard objectives setdisplay list death_count

## リスポン
scoreboard players set @a death 0
scoreboard players set @a respawn_time -1
scoreboard players set @a target 0
scoreboard players set @a food 0
## 表示
scoreboard players set @a death_count 0
scoreboard players set @a kill_count 0
### コンクエスト
scoreboard players set @a assassin 0
scoreboard players set @a archer 0
scoreboard players set @a attacker 0
scoreboard players set @a tank 0
scoreboard players set @a support 0
scoreboard players set @a one_damage 0
scoreboard players set @a recharge 0
## スキル
scoreboard players set @a used_stick 0
scoreboard players set @a used_shield 0
scoreboard players set @a used_crossbow 0
scoreboard players set @a inground_arrow 0
scoreboard players set @a used_potion 0
scoreboard players set conquest conquest 0
scoreboard objectives setdisplay sidebar kill_count
scoreboard players set @a sneak 0
scoreboard players set @a sneak_time 0

team remove red
team remove blue
team add red "レッドチーム"
team add blue "ブルーチーム"
team modify red color red
team modify red friendlyFire false
team modify red collisionRule never
team modify red nametagVisibility hideForOtherTeams
team modify blue color blue
team modify blue friendlyFire false
team modify blue collisionRule never
team modify blue nametagVisibility hideForOtherTeams

team join red レッドチーム
scoreboard players set レッドチーム total_point 0
scoreboard players set レッドチーム item 0
team join blue ブルーチーム
scoreboard players set ブルーチーム total_point 0
scoreboard players set ブルーチーム item 0
team join red @e[tag=northeast]
team join blue @e[tag=southwest]

bossbar add red_total_point {"text":"レッドチーム"}
bossbar add blue_total_point {"text":"ブルーチーム"}
bossbar set red_total_point color red
bossbar set blue_total_point color blue
bossbar set red_total_point max 50000
bossbar set blue_total_point max 50000
bossbar set red_total_point players @a
bossbar set blue_total_point players @a
bossbar set red_total_point name {"text":"レッドチーム"}
bossbar set blue_total_point name {"text":"ブルーチーム"}
bossbar set red_total_point value 0
bossbar set blue_total_point value 0

scoreboard players set @e[tag=northeast] red 0
scoreboard players set @e[tag=northwest] red 0
scoreboard players set @e[tag=southeast] red 0
scoreboard players set @e[tag=southwest] red 0
scoreboard players set @e[tag=northeast] blue 0
scoreboard players set @e[tag=northwest] blue 0
scoreboard players set @e[tag=southeast] blue 0
scoreboard players set @e[tag=southwest] blue 0

spawnpoint @a 120 134 0
title @a times 20 20 20
kill @e[type=spectral_arrow]
kill @e[type=arrow]
kill @e[type=item]
kill @e[type=experience_orb]
kill @e[type=armor_stand]
kill @e[type=iron_golem]
clear @a

say おｋ
function conquest_pvp:conquest/random
xp set @a 0 levels
xp set @a 0 points