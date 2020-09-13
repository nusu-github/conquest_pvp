function conquest_pvp:time

# アサシン
execute as @s[scores={assassin=1}] run title @s actionbar [{"text":"スキルリチャージ中:"},{"score":{"name":"@s","objective":"seconds"}},{"text":"/30"}]
execute as @s[scores={assassin=1}] if score @s seconds matches 30.. run function conquest_pvp:conquest/re_setup
# アタッカー
execute as @s[scores={attacker=1}] run title @s actionbar [{"text":"スキルリチャージ中:"},{"score":{"name":"@s","objective":"seconds"}},{"text":"/45"}]
execute as @s[scores={attacker=1}] if score @s seconds matches 45.. run function conquest_pvp:conquest/re_setup
# タンク
execute as @s[scores={tank=1}] run title @s actionbar [{"text":"スキルリチャージ中:"},{"score":{"name":"@s","objective":"seconds"}},{"text":"/30"}]
execute as @s[scores={tank=1}] if score @s seconds matches 30.. run function conquest_pvp:conquest/re_setup
# アーチャー
execute as @s[scores={archer=1}] run title @s actionbar [{"text":"スキルリチャージ中:"},{"score":{"name":"@s","objective":"seconds"}},{"text":"/30"}]
execute as @s[scores={archer=1}] if score @s seconds matches 30.. run function conquest_pvp:conquest/re_setup
# サポート
execute as @s[scores={support=1}] run title @s actionbar [{"text":"スキルリチャージ中:"},{"score":{"name":"@s","objective":"seconds"}},{"text":"/15"}]
execute as @s[scores={support=1}] if score @s seconds matches 15.. run function conquest_pvp:conquest/re_setup
