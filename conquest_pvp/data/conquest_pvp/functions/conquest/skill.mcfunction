# スキル判定

## リスポーン中のスキル無効化
execute unless score @s respawn_time matches -1 run scoreboard players set @s used_stick 0
execute unless score @s respawn_time matches -1 run scoreboard players set @s used_shield 0
execute unless score @s respawn_time matches -1 run scoreboard players set @s used_stick 0

## アサシン 固定スキル1
execute as @s[scores={assassin=1,used_stick=1..}] run function conquest_pvp:conquest/skill/assassin_transparent

## アタッカー 固定スキル1
execute as @s[scores={attacker=1,used_stick=1..}] run function conquest_pvp:conquest/skill/arbitrament_of_the_sword

## タンク 固定スキル1・2
execute as @s[scores={tank=1,used_stick=1..}] run function conquest_pvp:conquest/skill/uniqueness_one_and_only_shield
execute as @s[scores={tank=1,used_shield=1..}] run function conquest_pvp:conquest/skill/shield_regeneration

## アーチャー 固定スキル1
execute as @s[scores={archer=1,used_stick=1..}] run function conquest_pvp:conquest/skill/explosion

## サポート 固定スキル全部
execute as @s[scores={support=1}] run function conquest_pvp:conquest/skill/support
execute as @e[type=armor_stand] at @s run function conquest_pvp:conquest/skill/support_helper
