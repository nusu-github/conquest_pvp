scoreboard players set @e[tag=northeast] red 500
scoreboard players set @e[tag=southwest] blue 500
tp @a[team=red] 141 111 79
tp @a[team=blue] 141 111 79
title @a title {"text":"30秒後にゲームを開始します"}
title @a subtitle {"text":"装備を選択してください"}
summon area_effect_cloud 141 116 80 {Duration: 32768, Tags: ["30_timer"]}
effect give @a instant_health 35 100
effect give @a regeneration 35 255
effect give @a resistance 35 255
spawnpoint @a 120 134 0
function conquest_pvp:conquest/job/random