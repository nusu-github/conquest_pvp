xp add @s -20 levels
execute as @s[team=blue] at @s run execute at @a[team=red,distance=..30] run summon minecraft:dragon_fireball ~ ~20 ~ {direction: [0.0d, -1.0d, 0.0d], power: [0.0d, -1.0d, 0.0d]}
execute as @s[team=red] at @s run execute at @a[team=blue,distance=..30] run summon minecraft:dragon_fireball ~ ~20 ~ {direction: [0.0d, -1.0d, 0.0d], power: [0.0d, -1.0d, 0.0d]}
scoreboard players set @s sneak 0