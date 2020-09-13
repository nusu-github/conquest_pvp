scoreboard players set @s recharge 0
scoreboard players set @s tick 0
scoreboard players set @s seconds 0
execute as @s[scores={assassin=1}] run function conquest_pvp:conquest/job/assassin
execute as @s[scores={attacker=1}] run function conquest_pvp:conquest/job/attacker
execute as @s[scores={tank=1}] run function conquest_pvp:conquest/job/tank
execute as @s[scores={archer=1}] run function conquest_pvp:conquest/job/archer
execute as @s[scores={support=1}] run function conquest_pvp:conquest/job/support
