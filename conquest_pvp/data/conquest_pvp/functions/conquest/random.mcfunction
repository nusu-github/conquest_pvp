say チームをランダム選択します
execute as @r run team join red
execute as @r run team join blue
execute as @r[team=!] if entity @s[team=red] run team join red @a[team=]
execute as @r[team=!] if entity @s[team=blue] run team join blue @a[team=]
scoreboard players set red_count red_count 0
scoreboard players set blue_count blue_count 0
scoreboard players set total_count total_count 0
scoreboard players set tmp_total_count tmp_total_count 0
execute as @a[team=red] run scoreboard players add red_count red_count 1
execute as @a[team=blue] run scoreboard players add blue_count blue_count 1
execute as @a run scoreboard players add total_count total_count 1
execute as @a run scoreboard players add tmp_total_count tmp_total_count 1
scoreboard players operation total_count total_count /= division division
scoreboard players operation tmp_total_count tmp_total_count -= total_count total_count
scoreboard players operation tmp_total_count tmp_total_count -= total_count total_count
execute unless score tmp_total_count tmp_total_count matches 0 as @r[team=!] run execute if score red_count red_count > blue_count blue_count run scoreboard players add blue_count blue_count 1
execute unless score tmp_total_count tmp_total_count matches 0 as @r[team=!] run execute if score red_count red_count < blue_count blue_count run scoreboard players add red_count red_count 1
execute if entity @a[team=] run function conquest_pvp:conquest/random
execute unless score red_count red_count = blue_count blue_count run function conquest_pvp:conquest/random
