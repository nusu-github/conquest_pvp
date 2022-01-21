# 250超えたら250にセット 0以下なら0にセット
execute if score @s red matches 250.. run scoreboard players set @s red 250
execute if score @s blue matches ..0 run scoreboard players set @s blue 0
# 何か色々判定がバグるので判定用のエンティティ召喚
execute if score @s red matches 250 run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Duration:32768,Tags:["decision_red"],CustomName:'{"text":"判定"}'}
execute if score @s red matches 250 run team join red
execute if score @s red matches 0 run team leave @s
# 拠点状態表示
execute if score @s blue matches 1.. run title @a[team=red,x=96,y=123,z=24,dx=8,dy=20,dz=-8] actionbar [{"text":"占領状態CA:"},{"score":{"name":"@e[tag=northeast,limit=1]","objective":"blue"}},{"text":"/250"}]
execute if score @s blue matches 1.. run title @a[team=red,x=144,y=123,z=24,dx=-8,dy=20,dz=-8] actionbar [{"text":"占領状態:CB"},{"score":{"name":"@e[tag=northwest,limit=1]","objective":"blue"}},{"text":"/250"}]
execute if score @s blue matches 1.. run title @a[team=red,x=96,y=123,z=-24,dx=8,dy=20,dz=8] actionbar [{"text":"占領状態CC:"},{"score":{"name":"@e[tag=southeast,limit=1]","objective":"blue"}},{"text":"/250"}]
execute if score @s blue matches 1.. run title @a[team=red,x=144,y=123,z=-24,dx=-8,dy=20,dz=8] actionbar [{"text":"占領状態CD:"},{"score":{"name":"@e[tag=southwest,limit=1]","objective":"blue"}},{"text":"/250"}]
execute if score @s blue matches 0 run title @a[team=red,x=96,y=123,z=24,dx=8,dy=20,dz=-8] actionbar [{"text":"占領状態DA:"},{"score":{"name":"@e[tag=northeast,limit=1]","objective":"red"}},{"text":"/250"}]
execute if score @s blue matches 0 run title @a[team=red,x=144,y=123,z=24,dx=-8,dy=20,dz=-8] actionbar [{"text":"占領状態DB:"},{"score":{"name":"@e[tag=northwest,limit=1]","objective":"red"}},{"text":"/250"}]
execute if score @s blue matches 0 run title @a[team=red,x=96,y=123,z=-24,dx=8,dy=20,dz=8] actionbar [{"text":"占領状態DC:"},{"score":{"name":"@e[tag=southeast,limit=1]","objective":"red"}},{"text":"/250"}]
execute if score @s blue matches 0 run title @a[team=red,x=144,y=123,z=-24,dx=-8,dy=20,dz=8] actionbar [{"text":"占領状態DD:"},{"score":{"name":"@e[tag=southwest,limit=1]","objective":"red"}},{"text":"/250"}]
# 拠点状態セット
function conquest_pvp:conquest/base_state_set
# 消す
kill @e[tag=decision_red]
