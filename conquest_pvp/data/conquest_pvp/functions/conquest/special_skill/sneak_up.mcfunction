
execute as @s[scores={sneak=1..,sneak_time=0}] at @s run xp add @s -2 levels
execute as @s[scores={sneak=1..,sneak_time=0}] at @s run effect give @s speed 1 2
execute as @s[scores={sneak=1..,sneak_time=0}] at @s run effect give @s jump_boost 1 2
execute as @s[scores={sneak=1..,sneak_time=0}] run scoreboard players set @s sneak_time 100
execute as @s[scores={sneak=1..,sneak_time=40..}] at @s run particle dust 1.000 0.000 0.000 1 ~ ~ ~ 0 0 0 1 0 normal
execute as @s[scores={sneak=1..,sneak_time=1..}] run scoreboard players remove @s sneak_time 1
execute as @s[scores={sneak=1..,sneak_time=..1}] run scoreboard players set @s sneak 0
execute as @s[scores={sneak=0,sneak_time=..1}] run scoreboard players set @s sneak_time 0