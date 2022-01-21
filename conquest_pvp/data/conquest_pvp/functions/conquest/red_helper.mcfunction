# XP付与
execute if score @s red matches 250 run execute store success score @a[team=red,x=96,y=123,z=24,dx=8,dy=20,dz=-8] is_succeeded run xp add @a[team=red,x=96,y=123,z=24,dx=8,dy=20,dz=-8,scores={is_succeeded=0}] 1
execute if score @s red matches 250 run execute store success score @a[team=red,x=144,y=123,z=24,dx=-8,dy=20,dz=-8] is_succeeded run xp add @a[team=red,x=144,y=123,z=24,dx=-8,dy=20,dz=-8,scores={is_succeeded=0}] 1
execute if score @s red matches 250 run execute store success score @a[team=red,x=96,y=123,z=-24,dx=8,dy=20,dz=8] is_succeeded run xp add @a[team=red,x=96,y=123,z=-24,dx=8,dy=20,dz=8,scores={is_succeeded=0}] 1
execute if score @s red matches 250 run execute store success score @a[team=red,x=144,y=123,z=-24,dx=-8,dy=20,dz=8] is_succeeded run xp add @a[team=red,x=144,y=123,z=-24,dx=-8,dy=20,dz=8,scores={is_succeeded=0}] 1
execute as @a[scores={is_succeeded=1}] run scoreboard players set @s is_succeeded 0
# ポイント追加
execute if score @s blue matches 1.. run scoreboard players remove @s blue 1
execute if score @s blue matches 0 run scoreboard players add @s red 1