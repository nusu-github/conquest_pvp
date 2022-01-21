# XP付与
execute if score @s blue matches 250 run execute store success score @a[team=blue,x=96,y=123,z=24,dx=8,dy=20,dz=-8] is_succeeded run xp add @a[team=blue,x=96,y=123,z=24,dx=8,dy=20,dz=-8,scores={is_succeeded=0}] 1
execute if score @s blue matches 250 run execute store success score @a[team=blue,x=144,y=123,z=24,dx=-8,dy=20,dz=-8] is_succeeded run xp add @a[team=blue,x=144,y=123,z=24,dx=-8,dy=20,dz=-8,scores={is_succeeded=0}] 1
execute if score @s blue matches 250 run execute store success score @a[team=blue,x=96,y=123,z=-24,dx=8,dy=20,dz=8] is_succeeded run xp add @a[team=blue,x=96,y=123,z=-24,dx=8,dy=20,dz=8,scores={is_succeeded=0}] 1
execute if score @s blue matches 250 run execute store success score @a[team=blue,x=144,y=123,z=-24,dx=-8,dy=20,dz=8] is_succeeded run xp add @a[team=blue,x=144,y=123,z=-24,dx=-8,dy=20,dz=8,scores={is_succeeded=0}] 1
execute as @a[scores={is_succeeded=1}] run scoreboard players set @s is_succeeded 0
# ポイント追加
execute if score @s red matches 1.. run scoreboard players remove @s red 1
execute if score @s red matches 0 run scoreboard players add @s blue 1