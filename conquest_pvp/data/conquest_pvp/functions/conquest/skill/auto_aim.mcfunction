
execute as @s[scores={sneak=1..}] at @s facing entity @e[type=!player,type=!item,type=!experience_orb,type=!arrow,type=!area_effect_cloud,type=!firework_rocket,type=!armor_stand,type=!spectral_arrow,type=!iron_golem,sort=nearest,limit=1] feet run tp ^ ^ ^
scoreboard players set @s sneak 0
