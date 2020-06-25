kill @e[type=area_effect_cloud]
execute if score レッドチーム total_point matches 50000.. run title @a title {"text":"レッドの勝利!","color":"red"}
execute if score ブルーチーム total_point matches 50000.. run title @a title {"text":"ブルーの勝利!","color":"blue"}
team modify red nametagVisibility always
team modify blue nametagVisibility always
scoreboard objectives setdisplay sidebar kill_count
scoreboard players set レッドチーム total_point 0
scoreboard players set ブルーチーム total_point 0
scoreboard players set conquest conquest 0
clear @a
tp @a 120 111 72
