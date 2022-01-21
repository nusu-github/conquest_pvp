# 試合終了処理
kill @e[type=!player]
execute if score レッドチーム total_point matches 50000.. run title @a title {"text":"レッドの勝利!","color":"red"}
execute if score ブルーチーム total_point matches 50000.. run title @a title {"text":"ブルーの勝利!","color":"blue"}
title @p title {"text":"リザルト"}
team modify red nametagVisibility always
team modify blue nametagVisibility always
bossbar remove blue_total_point
bossbar remove red_total_point
scoreboard players reset *
clear @a
tp @a 120 111 72
