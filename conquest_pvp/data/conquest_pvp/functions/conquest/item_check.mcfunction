execute at @e[type=item,nbt={Item: {id: "minecraft:potion", tag: {Potion: "minecraft:leaping"}}}] if entity @a[limit=1,sort=nearest,distance=..1,team=red] store success score @e[type=item,nbt={Item: {id: "minecraft:potion", tag: {Potion: "minecraft:leaping"}}}] is_succeeded run effect give @a[team=red] jump_boost 120 3
execute at @e[type=item,nbt={Item: {id: "minecraft:potion", tag: {Potion: "minecraft:leaping"}}}] if entity @a[limit=1,sort=nearest,distance=..1,team=blue] store success score @e[type=item,nbt={Item: {id: "minecraft:potion", tag: {Potion: "minecraft:leaping"}}}] is_succeeded run effect give @a[team=blue] jump_boost 120 3
execute as @e[type=item,nbt={Item: {id: "minecraft:potion", tag: {Potion: "minecraft:leaping"}}},limit=1] if score @s is_succeeded matches 1.. run kill @s
#---
execute at @e[type=item,nbt={Item: {id: "minecraft:potion", tag: {Potion: "minecraft:regeneration"}}}] if entity @a[limit=1,sort=nearest,distance=..1,team=red] store success score @e[type=item,nbt={Item: {id: "minecraft:potion", tag: {Potion: "minecraft:regeneration"}}}] is_succeeded run effect give @a[team=red] regeneration 30 1
execute at @e[type=item,nbt={Item: {id: "minecraft:potion", tag: {Potion: "minecraft:regeneration"}}}] if entity @a[limit=1,sort=nearest,distance=..1,team=blue] store success score @e[type=item,nbt={Item: {id: "minecraft:potion", tag: {Potion: "minecraft:regeneration"}}}] is_succeeded run effect give @a[team=blue] regeneration 30 1
execute as @e[type=item,nbt={Item: {id: "minecraft:potion", tag: {Potion: "minecraft:regeneration"}}},limit=1] if score @s is_succeeded matches 1.. run kill @s
#---
execute at @e[type=item,nbt={Item: {id: "minecraft:potion"}}] run particle lava ~ ~ ~ 0 0 0 1 1 normal @a
spreadplayers 120 0 10 35 false @e[type=item,nbt={Item: {id: "minecraft:potion"}},y=136,dy=50]
