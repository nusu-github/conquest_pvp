execute as @a if score @s respawn_time matches 0 if score @s death matches 1.. run scoreboard players set @s respawn_time -2
execute as @a if score @s respawn_time matches -2 if score @s death matches 1.. run function conquest_pvp:respawn/start
title @a[scores={respawn_time=1}] title {"text":"リスポーンまで残り1秒..."}
execute as @e if score @s respawn_time matches 1 run scoreboard players remove @s respawn_time 1
title @a[scores={respawn_time=2}] title {"text":"リスポーンまで残り2秒..."}
execute as @e if score @s respawn_time matches 2 run scoreboard players remove @s respawn_time 1
title @a[scores={respawn_time=3}] title {"text":"リスポーンまで残り3秒..."}
execute as @e if score @s respawn_time matches 3 run scoreboard players remove @s respawn_time 1
title @a[scores={respawn_time=4}] title {"text":"リスポーンまで残り4秒..."}
execute as @e if score @s respawn_time matches 4 run scoreboard players remove @s respawn_time 1
title @a[scores={respawn_time=5}] title {"text":"リスポーンまで残り5秒..."}
execute as @e if score @s respawn_time matches 5 run scoreboard players remove @s respawn_time 1
title @a[scores={respawn_time=6}] title {"text":"リスポーンまで残り6秒..."}
execute as @e if score @s respawn_time matches 6 run scoreboard players remove @s respawn_time 1
title @a[scores={respawn_time=7}] title {"text":"リスポーンまで残り7秒..."}
execute as @e if score @s respawn_time matches 7 run scoreboard players remove @s respawn_time 1
title @a[scores={respawn_time=8}] title {"text":"リスポーンまで残り8秒..."}
execute as @e if score @s respawn_time matches 8 run scoreboard players remove @s respawn_time 1
title @a[scores={respawn_time=9}] title {"text":"リスポーンまで残り9秒..."}
execute as @e if score @s respawn_time matches 9 run scoreboard players remove @s respawn_time 1
schedule function conquest_pvp:respawn/9_0 1s
