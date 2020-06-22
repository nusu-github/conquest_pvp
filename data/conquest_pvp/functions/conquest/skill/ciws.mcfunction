#ダメージ判定
execute at @s[tag=!iron_golem] unless entity @e[type=iron_golem,distance=..1] run summon iron_golem ~ ~ ~ {NoGravity: 1b, Silent: 1b, NoAI: 1b, Health: 1f, Attributes: [{Name: generic.maxHealth, Base: 1}, {Name: generic.armor, Base: 0}]}
execute at @s if entity @e[type=iron_golem,distance=..1] run tag @s add iron_golem
effect clear @s
effect clear @e[type=iron_golem]
effect give @e[type=iron_golem] invisibility 1 1
effect give @e[type=iron_golem] regeneration 1 1
#目線調整
execute as @s[tag=red] at @s facing entity @a[team=blue,sort=nearest,distance=..8,limit=1] feet run tp ^ ^ ^
execute as @s[tag=blue] at @s facing entity @a[team=red,sort=nearest,distance=..8,limit=1] feet run tp ^ ^ ^
execute as @s[tag=red] if entity @a[team=blue,sort=nearest,distance=..8,limit=1] run function conquest_pvp:time
execute as @s[tag=blue] if entity @a[team=red,sort=nearest,distance=..8,limit=1] run function conquest_pvp:time
execute as @s[tag=red,scores={seconds=1..}] at @a[team=blue,sort=nearest,distance=..8,limit=1] run summon area_effect_cloud ~ ~ ~ {Particle: "lava", ReapplicationDelay: 20, Radius: 1f, RadiusOnUse: -1f, Duration: 21, Effects: [{Id: 19b, Amplifier: 1b, Duration: 20}, {Id: 24b, Amplifier: 1b, Duration: 200}]}
execute as @s[tag=blue,scores={seconds=1..}] at @a[team=red,sort=nearest,distance=..8,limit=1] run summon area_effect_cloud ~ ~ ~ {Particle: "lava", ReapplicationDelay: 20, Radius: 1f, RadiusOnUse: -1f, Duration: 21, Effects: [{Id: 19b, Amplifier: 1b, Duration: 20}, {Id: 24b, Amplifier: 1b, Duration: 200}]}
execute as @s[scores={seconds=1..}] run scoreboard players set @s seconds 0
execute at @s[tag=iron_golem] as @e[type=iron_golem,distance=..1] run tp @e[type=iron_golem,sort=nearest,distance=..1] ~ ~ ~ ~180 ~
execute at @s[tag=iron_golem] unless entity @e[type=iron_golem,distance=..1] run particle explosion ~ ~ ~ 0 0 0 1 1 normal
execute at @s[tag=iron_golem] unless entity @e[type=iron_golem,distance=..1] run kill @s