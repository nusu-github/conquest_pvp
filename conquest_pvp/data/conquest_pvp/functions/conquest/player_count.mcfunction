scoreboard players set red_count red_count 0
scoreboard players set blue_count blue_count 0
scoreboard players set total_count total_count 0
execute as @a[team=red] run scoreboard players add red_count red_count 1
execute as @a[team=blue] run scoreboard players add blue_count blue_count 1
execute as @a[team=!] run scoreboard players add total_count total_count 1
