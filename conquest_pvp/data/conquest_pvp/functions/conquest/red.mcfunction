## 何か色々判定がバグるので判定用のエンティティ召喚
execute as @s at @s if score @s red matches 250.. run summon area_effect_cloud ~ ~ ~ {Duration: 32768, Tags: ["decision_red"]}
execute as @s if score @s red matches 250.. run team join red
## 拠点状態表示
title @a[team=red,x=96,y=123,z=24,dx=8,dy=20,dz=-8] actionbar [{"text":"占領状態:"},{"score":{"name":"@e[tag=northeast,limit=1]","objective":"red"}},{"text":"/250"}]
title @a[team=red,x=144,y=123,z=24,dx=-8,dy=20,dz=-8] actionbar [{"text":"占領状態:"},{"score":{"name":"@e[tag=northwest,limit=1]","objective":"red"}},{"text":"/250"}]
title @a[team=red,x=96,y=123,z=-24,dx=8,dy=20,dz=8] actionbar [{"text":"占領状態:"},{"score":{"name":"@e[tag=southeast,limit=1]","objective":"red"}},{"text":"/250"}]
title @a[team=red,x=144,y=123,z=-24,dx=-8,dy=20,dz=8] actionbar [{"text":"占領状態:"},{"score":{"name":"@e[tag=southwest,limit=1]","objective":"red"}},{"text":"/250"}]
## XP付与
execute if score @s red matches 250.. run xp add @a[team=red,x=96,y=123,z=24,dx=8,dy=20,dz=-8] 1
execute if score @s red matches 250.. run xp add @a[team=red,x=144,y=123,z=24,dx=-8,dy=20,dz=-8] 1
execute if score @s red matches 250.. run xp add @a[team=red,x=96,y=123,z=-24,dx=8,dy=20,dz=8] 1
execute if score @s red matches 250.. run xp add @a[team=red,x=144,y=123,z=-24,dx=-8,dy=20,dz=8] 1
## 北東
execute if entity @e[type=area_effect_cloud,tag=decision_red,x=99,y=125,z=18,dx=3,dy=2,dz=3] run fill 96 123 24 104 123 16 red_concrete replace
execute if entity @e[type=area_effect_cloud,tag=decision_red,x=99,y=125,z=18,dx=3,dy=2,dz=3] run fill 101 123 19 99 123 21 diamond_block replace
execute if entity @e[type=area_effect_cloud,tag=decision_red,x=99,y=125,z=18,dx=3,dy=2,dz=3] run setblock 100 125 20 red_stained_glass
## 北西
execute if entity @e[type=area_effect_cloud,tag=decision_red,x=141,y=125,z=18,dx=-3,dy=2,dz=3] run fill 144 123 24 136 123 16 red_concrete replace
execute if entity @e[type=area_effect_cloud,tag=decision_red,x=141,y=125,z=18,dx=-3,dy=2,dz=3] run fill 141 123 21 139 123 19 diamond_block replace
execute if entity @e[type=area_effect_cloud,tag=decision_red,x=141,y=125,z=18,dx=-3,dy=2,dz=3] run setblock 140 125 20 red_stained_glass
## 南東
execute if entity @e[type=area_effect_cloud,tag=decision_red,x=99,y=125,z=-18,dx=3,dy=2,dz=-3] run fill 96 123 -24 104 123 -16 red_concrete replace
execute if entity @e[type=area_effect_cloud,tag=decision_red,x=99,y=125,z=-18,dx=3,dy=2,dz=-3] run fill 101 123 -19 99 123 -21 diamond_block replace
execute if entity @e[type=area_effect_cloud,tag=decision_red,x=99,y=125,z=-18,dx=3,dy=2,dz=-3] run setblock 100 125 -20 red_stained_glass
## 南西
execute if entity @e[type=area_effect_cloud,tag=decision_red,x=141,y=125,z=-18,dx=-3,dy=2,dz=-3] run fill 144 123 -24 136 123 -16 red_concrete replace
execute if entity @e[type=area_effect_cloud,tag=decision_red,x=141,y=125,z=-18,dx=-3,dy=2,dz=-3] run fill 141 123 -21 139 123 -19 diamond_block replace
execute if entity @e[type=area_effect_cloud,tag=decision_red,x=141,y=125,z=-18,dx=-3,dy=2,dz=-3] run setblock 140 125 -20 red_stained_glass
### ポイント追加
scoreboard players add @s red 1
execute if score @s blue matches 1.. run scoreboard players remove @s blue 1
### 250超えたら250にセット
execute if score @s red matches 251.. run scoreboard players set @s red 250
### 消す
kill @e[type=area_effect_cloud,tag=decision_red]