# アサシン　固定スキル1
execute as @s[scores={assassin=1,used_stick=1..}] run function conquest_pvp:conquest/skill/assassin_transparent
# アタッカー　固定スキル1
execute as @s[scores={attacker=1,used_stick=1..}] run function conquest_pvp:conquest/skill/arbitrament_of_the_sword
# タンク　固定スキル1
execute as @s[scores={tank=1,used_stick=1..}] run function conquest_pvp:conquest/skill/uniqueness_one_and_only_shield
# タンク　固定スキル2
execute as @s[scores={tank=1,used_shield=1..}] run function conquest_pvp:conquest/skill/shield_regeneration
# アーチャー　固定スキル1
execute as @s[scores={archer=1,used_stick=1..}] run function conquest_pvp:conquest/skill/explosion
# サポート　固定スキル全部
execute as @s[scores={support=1}] run function conquest_pvp:conquest/skill/support
execute as @e[type=armor_stand] at @s run function conquest_pvp:conquest/skill/ciws

# オートエイム
execute as @s[scores={archer=1,sneak=1..}] run function conquest_pvp:conquest/skill/auto_aim

execute as @a[scores={one_damage=1..}] if score @s damage matches 1.. store success score @s is_succeeded run effect clear @s
execute as @a[scores={one_damage=1..,is_succeeded=1..}] run scoreboard players set @s damage 0
execute as @a[scores={one_damage=1..,is_succeeded=1..}] run scoreboard players set @s is_succeeded -1
execute as @a[scores={one_damage=1..,is_succeeded=-1}] run scoreboard players set @s one_damage 0