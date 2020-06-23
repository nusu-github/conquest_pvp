data modify entity @e[type=spectral_arrow,nbt={pickup: 1b},limit=1] damage set value 0d
data modify entity @e[type=arrow,nbt={Potion: "minecraft:slowness"},limit=1] damage set value 0d
data modify entity @e[type=arrow,nbt={Potion: "minecraft:swiftness"},limit=1] damage set value 0d
data modify entity @e[type=arrow,nbt={Potion: "minecraft:healing"},limit=1] damage set value 0d
data modify entity @e[type=arrow,nbt={Potion: "minecraft:weakness"},limit=1] damage set value 0d
data modify entity @e[type=spectral_arrow,nbt={pickup: 1b},limit=1] crit set value 0b
data modify entity @e[type=arrow,nbt={Potion: "minecraft:slowness"},limit=1] crit set value 0b
data modify entity @e[type=arrow,nbt={Potion: "minecraft:swiftness"},limit=1] crit set value 0b
data modify entity @e[type=arrow,nbt={Potion: "minecraft:healing"},limit=1] crit set value 0b
data modify entity @e[type=arrow,nbt={Potion: "minecraft:weakness"},limit=1] crit set value 0b
data modify entity @e[type=spectral_arrow,nbt={pickup: 1b},limit=1] ShotFromCrossbow set value 0b
data modify entity @e[type=arrow,nbt={Potion: "minecraft:slowness"},limit=1] ShotFromCrossbow set value 0b
data modify entity @e[type=arrow,nbt={Potion: "minecraft:swiftness"},limit=1] ShotFromCrossbow set value 0b
data modify entity @e[type=arrow,nbt={Potion: "minecraft:healing"},limit=1] ShotFromCrossbow set value 0b
data modify entity @e[type=arrow,nbt={Potion: "minecraft:weakness"},limit=1] ShotFromCrossbow set value 0b

execute as @s[team=red,scores={used_crossbow=1..}] at @s run tag @e[type=arrow,tag=,sort=nearest,limit=1] add arrow_red
execute as @s[team=blue,scores={used_crossbow=1..}] at @s run tag @e[type=arrow,tag=,sort=nearest,limit=1] add arrow_blue
execute as @s[team=red,scores={used_crossbow=1..}] at @s run tag @e[type=spectral_arrow,tag=,sort=nearest,limit=1] add arrow_red
execute as @s[team=blue,scores={used_crossbow=1..}] at @s run tag @e[type=spectral_arrow,tag=,sort=nearest,limit=1] add arrow_blue

execute at @e[type=spectral_arrow,nbt={inGround: 1b},tag=arrow_red] run effect give @a[team=blue,distance=..40] glowing 15 1
execute at @e[type=spectral_arrow,nbt={inGround: 1b},tag=arrow_red] run effect give @a[team=blue,distance=..40] poison 1 1
execute at @e[type=arrow,nbt={Potion: "minecraft:slowness", inGround: 1b},tag=arrow_red] run effect give @a[team=blue,distance=..10] slowness 5 2
execute at @e[type=arrow,nbt={Potion: "minecraft:swiftness", inGround: 1b},tag=arrow_red] run effect give @a[team=red,distance=..8] speed 5 1
execute at @e[type=arrow,nbt={Potion: "minecraft:healing", inGround: 1b},tag=arrow_red] run effect give @a[team=red,distance=..17] absorption 10 3
execute at @e[type=arrow,nbt={Potion: "minecraft:healing", inGround: 1b},tag=arrow_red] run effect give @a[team=red,distance=..17] regeneration 3 1
execute at @e[type=arrow,nbt={Potion: "minecraft:weakness", inGround: 1b},tag=arrow_red] run summon armor_stand ~ ~ ~ {NoGravity: 1b, Invulnerable: 1b, Invisible: 1b, Tags: ["red"], HandItems: [{id: "minecraft:red_stained_glass", Count: 1b}, {id: "minecraft:red_stained_glass", Count: 1b}], ArmorItems: [{}, {}, {}, {id: "minecraft:dispenser", Count: 1b}]}

execute at @e[type=spectral_arrow,nbt={inGround: 1b},tag=arrow_blue] run effect give @a[team=red,distance=..40] glowing 15 1
execute at @e[type=spectral_arrow,nbt={inGround: 1b},tag=arrow_blue] run effect give @a[team=red,distance=..40] poison 1 1
execute at @e[type=arrow,nbt={Potion: "minecraft:slowness", inGround: 1b},tag=arrow_blue] run effect give @a[team=red,distance=..10] slowness 5 2
execute at @e[type=arrow,nbt={Potion: "minecraft:swiftness", inGround: 1b},tag=arrow_blue] run effect give @a[team=blue,distance=..8] speed 5 1
execute at @e[type=arrow,nbt={Potion: "minecraft:healing", inGround: 1b},tag=arrow_blue] run effect give @a[team=blue,distance=..17] absorption 10 3
execute at @e[type=arrow,nbt={Potion: "minecraft:healing", inGround: 1b},tag=arrow_blue] run effect give @a[team=blue,distance=..17] regeneration 3 1
execute at @e[type=arrow,nbt={Potion: "minecraft:weakness", inGround: 1b},tag=arrow_blue] run summon armor_stand ~ ~ ~ {NoGravity: 1b, Invulnerable: 1b, Invisible: 1b, Tags: ["blue"], HandItems: [{id: "minecraft:blue_stained_glass", Count: 1b}, {id: "minecraft:blue_stained_glass", Count: 1b}], ArmorItems: [{}, {}, {}, {id: "minecraft:dispenser", Count: 1b}]}

execute as @s store success score @s inground_arrow run kill @e[type=spectral_arrow,nbt={inGround: 1b},tag=!]
execute as @a[scores={inground_arrow=1..}] run scoreboard players set @s used_crossbow 0
execute as @s store success score @s inground_arrow run kill @e[type=arrow,nbt={inGround: 1b},tag=!]
execute as @a[scores={inground_arrow=1..}] run scoreboard players set @s used_crossbow 0
execute as @s[scores={used_crossbow=1..}] run scoreboard players set @s recharge 1

execute as @a[scores={used_crossbow=2..}] run scoreboard players set @s used_crossbow 0
execute as @a[scores={used_crossbow=2..}] run scoreboard players set @s recharge 1