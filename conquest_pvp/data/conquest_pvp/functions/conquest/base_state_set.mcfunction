# ブルーチーム
## 北東
execute if score @s blue matches 0 unless score @s red matches 250 run fill 96 123 24 104 123 16 white_concrete replace
execute if score @s blue matches 0 unless score @s red matches 250 run setblock 100 125 20 air replace
## 北西
execute if score @s blue matches 0 unless score @s red matches 250 run fill 144 123 24 136 123 16 white_concrete replace
execute if score @s blue matches 0 unless score @s red matches 250 run setblock 140 125 20 air replace
## 南東
execute if score @s blue matches 0 unless score @s red matches 250 run fill 96 123 -24 104 123 -16 white_concrete replace
execute if score @s blue matches 0 unless score @s red matches 250 run setblock 100 125 -20 air replace
## 南西
execute if score @s blue matches 0 unless score @s red matches 250 run fill 144 123 -24 136 123 -16 white_concrete replace
execute if score @s blue matches 0 unless score @s red matches 250 run setblock 140 125 -20 air replace

# レッドチーム
## 北東
execute if score @s red matches 0 unless score @s blue matches 250 run fill 96 123 24 104 123 16 white_concrete replace
execute if score @s red matches 0 unless score @s blue matches 250 run setblock 100 125 20 air replace
## 北西
execute if score @s red matches 0 unless score @s blue matches 250 run fill 144 123 24 136 123 16 white_concrete replace
execute if score @s red matches 0 unless score @s blue matches 250 run setblock 140 125 20 air replace
## 南東
execute if score @s red matches 0 unless score @s blue matches 250 run fill 96 123 -24 104 123 -16 white_concrete replace
execute if score @s red matches 0 unless score @s blue matches 250 run setblock 100 125 -20 air replace
## 南西
execute if score @s red matches 0 unless score @s blue matches 250 run fill 144 123 -24 136 123 -16 white_concrete replace
execute if score @s red matches 0 unless score @s blue matches 250 run setblock 140 125 -20 air replace

# --------------------------------------------------

# ブルーチーム
## 北東
execute if entity @e[type=area_effect_cloud,tag=decision_blue,distance=..1] run fill 96 123 24 104 123 16 blue_concrete replace
execute if entity @e[type=area_effect_cloud,tag=decision_blue,distance=..1] run setblock 100 125 20 blue_stained_glass
## 北西
execute if entity @e[type=area_effect_cloud,tag=decision_blue,distance=..1] run fill 144 123 24 136 123 16 blue_concrete replace
execute if entity @e[type=area_effect_cloud,tag=decision_blue,distance=..1] run setblock 140 125 20 blue_stained_glass replace
## 南東
execute if entity @e[type=area_effect_cloud,tag=decision_blue,distance=..1] run fill 96 123 -24 104 123 -16 blue_concrete replace
execute if entity @e[type=area_effect_cloud,tag=decision_blue,distance=..1] run setblock 100 125 -20 blue_stained_glass replace
## 南西
execute if entity @e[type=area_effect_cloud,tag=decision_blue,distance=..1] run fill 144 123 -24 136 123 -16 blue_concrete replace
execute if entity @e[type=area_effect_cloud,tag=decision_blue,distance=..1] run setblock 140 125 -20 blue_stained_glass replace

# レッドチーム
## 北東
execute if entity @e[type=area_effect_cloud,tag=decision_red,distance=..1] run fill 96 123 24 104 123 16 red_concrete replace
execute if entity @e[type=area_effect_cloud,tag=decision_red,distance=..1] run setblock 100 125 20 red_stained_glass replace
## 北西
execute if entity @e[type=area_effect_cloud,tag=decision_red,distance=..1] run fill 144 123 24 136 123 16 red_concrete replace
execute if entity @e[type=area_effect_cloud,tag=decision_red,distance=..1] run setblock 140 125 20 red_stained_glass replace
## 南東
execute if entity @e[type=area_effect_cloud,tag=decision_red,distance=..1] run fill 96 123 -24 104 123 -16 red_concrete replace
execute if entity @e[type=area_effect_cloud,tag=decision_red,distance=..1] run setblock 100 125 -20 red_stained_glass replace
## 南西
execute if entity @e[type=area_effect_cloud,tag=decision_red,distance=..1] run fill 144 123 -24 136 123 -16 red_concrete replace
execute if entity @e[type=area_effect_cloud,tag=decision_red,distance=..1] run setblock 140 125 -20 red_stained_glass replace


fill 101 123 19 99 123 21 diamond_block replace
fill 141 123 21 139 123 19 diamond_block replace
fill 101 123 -19 99 123 -21 diamond_block replace
fill 141 123 -21 139 123 -19 diamond_block replace