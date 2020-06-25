say 武装をランダム選択します
execute as @r run function conquest_pvp:conquest/job/assassin
execute as @r run function conquest_pvp:conquest/job/attacker
execute as @r run function conquest_pvp:conquest/job/tank
execute as @r run function conquest_pvp:conquest/job/archer
execute as @r run function conquest_pvp:conquest/job/support
execute if entity @a[scores={assassin=0,attacker=0,tank=0,archer=0,support=0}] run function conquest_pvp:conquest/job/random