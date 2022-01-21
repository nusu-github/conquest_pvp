
execute at @s[nbt={OnGround: 1b}] run scoreboard players set @s sneak_time 1
execute at @s[scores={sneak_time=1},nbt={OnGround: 1b}] as @s run tp ~ ~1 ~
execute as @s[scores={sneak_time=1},nbt={OnGround: 1b}] run effect give @s levitation 1 80
execute as @s[scores={sneak_time=1},nbt={OnGround: 0b},nbt=!{ActiveEffects: [{Id: 25b, Amplifier: 80b}]}] run effect give @s levitation 20 200
execute as @s[scores={sneak_time=1},nbt={OnGround: 1b},nbt={ActiveEffects: [{Id: 25b, Amplifier: -56b}]}] at @s run summon area_effect_cloud ~ ~ ~ {Particle: "cloud", ReapplicationDelay: 5, Radius: 4f, RadiusPerTick: 0f, RadiusOnUse: 0f, Duration: 10, Age: 0, WaitTime: 0, Effects: [{Id: 7b, Amplifier: 2b, Duration: 1}]}
execute as @s[scores={sneak_time=1},nbt={OnGround: 1b},nbt={ActiveEffects: [{Id: 25b, Amplifier: -56b}]}] at @s run summon creeper ~ ~-1 ~ {Fuse: 0}
execute as @s[scores={sneak_time=1},nbt={OnGround: 1b},nbt={ActiveEffects: [{Id: 25b, Amplifier: -56b}]}] at @s run effect clear
execute as @s[scores={sneak_time=1},nbt={OnGround: 1b},nbt=!{ActiveEffects: [{Id: 25b}]}] at @s run tp ~ ~5 ~
execute as @s[scores={sneak_time=1},nbt={OnGround: 1b},nbt=!{ActiveEffects: [{Id: 25b}]}] at @s run xp add @s -20 levels
execute as @s[scores={sneak_time=1},nbt={OnGround: 1b},nbt=!{ActiveEffects: [{Id: 25b}]}] at @s run scoreboard players set @s sneak 0
execute as @s[scores={sneak_time=1},nbt={OnGround: 1b},nbt=!{ActiveEffects: [{Id: 25b}]}] at @s run scoreboard players set @s sneak_time 0