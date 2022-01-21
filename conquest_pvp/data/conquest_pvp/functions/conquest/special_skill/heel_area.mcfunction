
xp add @s -20 levels
particle ambient_entity_effect ~ ~ ~ 0 0 0 1 5000 normal
execute as @s[team=blue] run effect give @a[team=blue] regeneration 30 5
execute as @s[team=red] run effect give @a[team=red] regeneration 30 5
scoreboard players set @s sneak 0