# サポート 常時判定

## スキル:監視
### ダメージ判定
execute as @s[tag=red] at @s[tag=!iron_golem] run summon iron_golem ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,Health:1f,CustomName:'{"text":"red"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:864000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1}]}
execute as @s[tag=blue] at @s[tag=!iron_golem] run summon iron_golem ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,Health:1f,CustomName:'{"text":"red"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:864000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1}]}
execute at @s if entity @e[type=iron_golem,distance=..1] run tag @s add iron_golem

### 目線調整
#### レッドチーム
execute as @s[tag=red] at @s facing entity @a[team=blue,sort=nearest,distance=..8,limit=1] feet run tp ^ ^ ^
execute as @s[tag=red] if entity @a[team=blue,sort=nearest,distance=..8,limit=1] run function conquest_pvp:time
execute as @s[tag=red,scores={seconds=2..}] at @a[team=blue,sort=nearest,distance=..8,limit=1] run summon area_effect_cloud ~ ~ ~ {Particle: "lava", ReapplicationDelay: 20, Radius: 1f, RadiusOnUse: -1f, Duration: 21, Effects: [{Id: 19b, Amplifier: 1b, Duration: 20}, {Id: 24b, Amplifier: 1b, Duration: 200}]}
#### ブルーチーム
execute as @s[tag=blue] at @s facing entity @a[team=red,sort=nearest,distance=..8,limit=1] feet run tp ^ ^ ^
execute as @s[tag=blue] if entity @a[team=red,sort=nearest,distance=..8,limit=1] run function conquest_pvp:time
execute as @s[tag=blue,scores={seconds=2..}] at @a[team=red,sort=nearest,distance=..8,limit=1] run summon area_effect_cloud ~ ~ ~ {Particle: "lava", ReapplicationDelay: 20, Radius: 1f, RadiusOnUse: -1f, Duration: 21, Effects: [{Id: 19b, Amplifier: 1b, Duration: 20}, {Id: 24b, Amplifier: 1b, Duration: 200}]}
### 再発動準備
execute as @s[scores={seconds=2..}] run scoreboard players set @s seconds 0
### 当たり判定拡張
execute at @s[tag=iron_golem] as @e[type=iron_golem,distance=..1] run tp @e[type=iron_golem,sort=nearest,distance=..1] ~ ~ ~ ~180 ~
### 消去
execute at @s[tag=iron_golem] unless entity @e[type=iron_golem,distance=..1] run particle explosion ~ ~ ~ 0 0 0 1 1 normal
execute at @s[tag=iron_golem] unless entity @e[type=iron_golem,distance=..1] run summon experience_orb ~ ~ ~ {Value: 5}
execute at @s[tag=iron_golem] unless entity @e[type=iron_golem,distance=..1] run kill @s
