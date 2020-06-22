say チームをランダム選択します
execute as @r run team join red
execute as @r run team join blue
execute if entity @a[team=] run function conquest_pvp:conquest/random