# ランダム処理

say 武装をランダム選択します
scoreboard players set @r[team=!] assassin 1
scoreboard players set @r[team=!] attacker 1
scoreboard players set @r[team=!] tank 1
scoreboard players set @r[team=!] archer 1
scoreboard players set @r[team=!] support 1
execute if entity @a[team=!,scores={assassin=0,attacker=0,tank=0,archer=0,support=0}] run function conquest_pvp:conquest/job/random
execute unless entity @a[team=!,scores={assassin=0,attacker=0,tank=0,archer=0,support=0}] as @a run function conquest_pvp:conquest/re_setup
