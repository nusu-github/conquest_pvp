# XP消費スキル
# 指定レベル以下の判定がある関係上発動されたいレベルから-1されるので注意

## アサシン XP消費スキル1
execute as @s[scores={assassin=1,sneak=1..},level=2..] run function conquest_pvp:conquest/special_skill/sneak_up
## アタッカー XP消費スキル1
#execute as @s[scores={attacker=1,sneak=10..},level=19..] run function conquest_pvp:conquest/special_skill/strike_explosion
## タンク XP消費スキル1
execute as @s[scores={tank=1,sneak=1..},level=1..] run function conquest_pvp:conquest/special_skill/infinity_shield
## アーチャー XP消費スキル1
#execute as @s[scores={archer=1,sneak=10..},level=19..] run function conquest_pvp:conquest/special_skill/the_destroyer_of_worlds
## サポート XP消費スキル1
execute as @s[scores={support=1,sneak=10..},level=19..] run function conquest_pvp:conquest/special_skill/heel_area

## 指定レベル以下ならスニークを0に
execute as @s[scores={assassin=1},level=..2] run scoreboard players set @s sneak 0
execute as @s[scores={attacker=1},level=..19] run scoreboard players set @s sneak 0
execute as @s[scores={tank=1},level=0] run scoreboard players set @s sneak 0
execute as @s[scores={archer=1},level=..19] run scoreboard players set @s sneak 0
execute as @s[scores={support=1},level=..19] run scoreboard players set @s sneak 0
