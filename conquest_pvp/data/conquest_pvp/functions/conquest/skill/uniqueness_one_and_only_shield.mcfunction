# タンク 固定スキル1
effect clear @s
item replace entity @s hotbar.1 with air 1
effect give @s regeneration 5 255 true
effect give @s resistance 5 255 true
execute as @s[team=blue] at @s run effect give @a[team=blue,distance=..6] resistance 1 5
execute as @s[team=red] at @s run effect give @a[team=red,distance=..6] resistance 1 5
execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Radius:6f,Duration:10,Color:12632256}
scoreboard players set @s used_stick 0
scoreboard players set @s recharge 1
