# アーチャー XP消費スキル
### かなりトリッキーな書き方してるので後に修正したい
xp add @s -20 levels
scoreboard players set @s[scores={is_succeeded=0}] used_crossbow 0
scoreboard players set @s[scores={is_succeeded=1}] is_succeeded 0

## レッドチーム
item replace entity @s[team=red,scores={used_crossbow=0}] hotbar.0 with crossbow{display: {Name: '[{"text":"スキル:"},{"text":"The destroyer of worlds"}]', Lore: ['{"text":"アーチャーのXP消費スキル"}', '{"text":"着弾地点に大爆発を起こす"}']}, Unbreakable: 1b, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:strong_harming", CustomPotionColor: 15073331}}, {}, {}], Charged: 1b} 1
execute store success score @s is_succeeded at @e[type=arrow,nbt={Potion: "minecraft:strong_harming", inGround: 1b, Color: 15073331}] run summon creeper ~ ~ ~ {Team: "red", powered: 1b, Fuse: 0, CustomName: '{"text":"スキル:The destroyer of worlds"}'}
execute at @e[type=arrow,nbt={Potion: "minecraft:strong_harming", inGround: 1b, Color: 15073331}] run particle explosion ~5 ~ ~5 2 2 2 1 100 normal

## ブルーチーム
item replace entity @s[team=blue,scores={used_crossbow=0}] hotbar.0 with crossbow{display: {Name: '[{"text":"スキル:"},{"text":"The destroyer of worlds"}]', Lore: ['{"text":"アーチャーのXP消費スキル"}', '{"text":"着弾地点に大爆発を起こす"}']}, Unbreakable: 1b, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:strong_harming", CustomPotionColor: 255}}, {}, {}], Charged: 1b} 1
execute store success score @s is_succeeded at @e[type=arrow,nbt={Potion: "minecraft:strong_harming", inGround: 1b, Color: 255}] run summon creeper ~ ~ ~ {Team: "blue", powered: 1b, Fuse: 0, CustomName: '{"text":"スキル:The destroyer of worlds"}'}
execute at @e[type=arrow,nbt={Potion: "minecraft:strong_harming", inGround: 1b, Color: 255}] run particle explosion ~5 ~ ~5 2 2 2 1 100 normal

execute if entity @s[scores={is_succeeded=1}] run kill @e[type=arrow,nbt={inGround: 1b, CustomPotionColor: 15073331},tag=]
execute if entity @s[scores={is_succeeded=1}] run kill @e[type=arrow,nbt={inGround: 1b, CustomPotionColor: 255},tag=]
scoreboard players set @s[scores={is_succeeded=1}] sneak 0
scoreboard players set @s[scores={is_succeeded=1}] is_succeeded 0
scoreboard players set @s[scores={is_succeeded=1}] used_crossbow 0

scoreboard players set @s[scores={is_succeeded=0}] is_succeeded 1

