# サポートスキル系
## 開発者向け情報 レッドチームは15073331 ブルーチームは255

## 矢のダメージを無効化
execute as @e[type=arrow,nbt={Color: 15073331}] run data merge entity @s {damage: 0d, crit: 0b, ShotFromCrossbow: 0b}
execute as @e[type=arrow,nbt={Color: 255}] run data merge entity @s {damage: 0d, crit: 0b, ShotFromCrossbow: 0b}

# 判定タグ付け
tag @e[type=arrow,tag=,nbt={Color: 15073331}] add arrow_red
tag @e[type=arrow,tag=,nbt={Color: 255}] add arrow_blue

# レッドチーム
execute at @e[type=arrow,nbt={Potion: "minecraft:water", inGround: 1b},tag=arrow_red] run effect give @a[team=blue,distance=..35] glowing 15 1
execute at @e[type=arrow,nbt={Potion: "minecraft:water", inGround: 1b},tag=arrow_red] run effect give @a[team=blue,distance=..35] poison 1 1
execute at @e[type=arrow,nbt={Potion: "minecraft:slowness", inGround: 1b},tag=arrow_red] run effect give @a[team=blue,distance=..10] slowness 5 2
execute at @e[type=arrow,nbt={Potion: "minecraft:swiftness", inGround: 1b},tag=arrow_red] run effect give @a[team=red,distance=..8] speed 5 1
execute at @e[type=arrow,nbt={Potion: "minecraft:healing", inGround: 1b},tag=arrow_red] run effect give @a[team=red,distance=..17] absorption 10 3
execute at @e[type=arrow,nbt={Potion: "minecraft:healing", inGround: 1b},tag=arrow_red] run effect give @a[team=red,distance=..17] regeneration 3 1
execute at @e[type=arrow,nbt={Potion: "minecraft:weakness", inGround: 1b},tag=arrow_red] run summon armor_stand ~ ~ ~ {NoGravity: 1b, Invulnerable: 1b, Invisible: 1b, Tags: ["red"], HandItems: [{id: "minecraft:red_stained_glass", Count: 1b}, {id: "minecraft:red_stained_glass", Count: 1b}], ArmorItems: [{}, {}, {}, {id: "minecraft:dispenser", Count: 1b}]}

# ブルーチーム
execute at @e[type=arrow,nbt={Potion: "minecraft:water", inGround: 1b},tag=arrow_blue] run effect give @a[team=red,distance=..35] glowing 15 1
execute at @e[type=arrow,nbt={Potion: "minecraft:water", inGround: 1b},tag=arrow_blue] run effect give @a[team=red,distance=..35] poison 1 1
execute at @e[type=arrow,nbt={Potion: "minecraft:slowness", inGround: 1b},tag=arrow_blue] run effect give @a[team=red,distance=..10] slowness 5 2
execute at @e[type=arrow,nbt={Potion: "minecraft:swiftness", inGround: 1b},tag=arrow_blue] run effect give @a[team=blue,distance=..8] speed 5 1
execute at @e[type=arrow,nbt={Potion: "minecraft:healing", inGround: 1b},tag=arrow_blue] run effect give @a[team=blue,distance=..17] absorption 10 3
execute at @e[type=arrow,nbt={Potion: "minecraft:healing", inGround: 1b},tag=arrow_blue] run effect give @a[team=blue,distance=..17] regeneration 3 1
execute at @e[type=arrow,nbt={Potion: "minecraft:weakness", inGround: 1b},tag=arrow_blue] run summon armor_stand ~ ~ ~ {NoGravity: 1b, Invulnerable: 1b, Invisible: 1b, Tags: ["blue"], HandItems: [{id: "minecraft:blue_stained_glass", Count: 1b}, {id: "minecraft:blue_stained_glass", Count: 1b}], ArmorItems: [{}, {}, {}, {id: "minecraft:dispenser", Count: 1b}]}

# 後片付け
kill @e[type=arrow,nbt={inGround: 1b},tag=!]

# リキャストセット
execute as @s[scores={used_crossbow=1..}] run scoreboard players set @s recharge 1
scoreboard players set @s used_crossbow 0
