scoreboard players set @e[tag=northeast] red 500
scoreboard players set @e[tag=southwest] blue 500
tp @a[team=red] 141 111 79
tp @a[team=blue] 141 111 79
title @a title {"text":"30秒後にゲームを開始します"}
title @a subtitle {"text":"装備を選択してください"}
scoreboard players set red_count red_count 0
scoreboard players set blue_count blue_count 0
execute as @a[team=red] run scoreboard players add red_count red_count 1
execute as @a[team=blue] run scoreboard players add blue_count blue_count 1
execute if score red_count red_count > blue_count blue_count run say 人数に差異があるためブルーチームの得点上昇が+1されます
execute if score red_count red_count < blue_count blue_count run say 人数に差異があるためレッドチームの得点上昇が+1されます
summon area_effect_cloud 141 116 80 {Duration: 32768, Tags: ["30_timer"]}
scoreboard players set @e[tag=30_timer] count_down 30
effect give @a instant_health 35 100
effect give @a regeneration 35 255
effect give @a resistance 35 255
spawnpoint @a 120 134 0
function conquest_pvp:conquest/job/random