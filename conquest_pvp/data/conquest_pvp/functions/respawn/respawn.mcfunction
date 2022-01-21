function conquest_pvp:conquest/re_setup
effect give @s instant_health 100 100
effect give @s regeneration 100 255
effect give @s resistance 100 255
scoreboard players set @s target 0
scoreboard players set @s respawn_time 9
scoreboard players set @s seconds 0
scoreboard players set @s used_crossbow 0
scoreboard players set @s used_stick 0
scoreboard players set @s used_shield 0
scoreboard players set @s used_potion 0
scoreboard players set @s sneak 0
scoreboard players set @s sneak_time 0
execute if score conquest conquest matches 1 run tp 141 111 78
schedule function conquest_pvp:respawn/9_0 1s
