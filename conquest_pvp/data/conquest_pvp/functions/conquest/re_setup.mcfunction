# 
## 防具・装備一式消去
clear @s
item replace entity @s armor.head with air 1
item replace entity @s armor.chest with air 1
item replace entity @s armor.legs with air 1
item replace entity @s armor.feet with air 1

## 武器配布
execute as @s[scores={assassin=1}] run function conquest_pvp:conquest/job/assassin
execute as @s[scores={attacker=1}] run function conquest_pvp:conquest/job/attacker
execute as @s[scores={tank=1}] run function conquest_pvp:conquest/job/tank
execute as @s[scores={archer=1}] run function conquest_pvp:conquest/job/archer
execute as @s[scores={support=1}] run function conquest_pvp:conquest/job/support

## ポーション配布
item replace entity @s hotbar.7 with minecraft:splash_potion{Potion: "minecraft:strong_healing"} 1

## チーム表示
item replace entity @s[team=red] hotbar.8 with red_stained_glass_pane 1
item replace entity @s[team=blue] hotbar.8 with blue_stained_glass_pane 1

scoreboard players set @s recharge 0
scoreboard players set @s tick 0
scoreboard players set @s seconds 0