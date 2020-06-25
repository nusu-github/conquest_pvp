execute as @s[scores={auto_aim=1}] at @s run tp @s ^ ^ ^ ~ ~5
execute as @s[team=red,scores={auto_aim=1}] at @s facing entity @a[team=blue,sort=nearest,limit=1] feet run tp ^ ^ ^
execute as @s[team=blue,scores={auto_aim=1}] at @s facing entity @a[team=red,sort=nearest,limit=1] feet run tp ^ ^ ^
execute as @s[scores={auto_aim=1}] at @s run tp @s ^ ^ ^ ~ ~-5
scoreboard players set @s sneak 0