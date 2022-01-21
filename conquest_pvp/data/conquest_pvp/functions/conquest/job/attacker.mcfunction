# アタッカー

## ジョブ選択
scoreboard players set @s archer 0
scoreboard players set @s assassin 0
scoreboard players set @s attacker 1
scoreboard players set @s tank 0
scoreboard players set @s support 0

## 直接コマンドを打たれた場合
execute as @s[scores={is_succeeded=0}] store success score @s is_succeeded run function conquest_pvp:conquest/re_setup

## バトルアックス
item replace entity @s hotbar.0 with diamond_axe{display: {Name: '{"text":"バトルアックス"}', Lore: ['{"text":"神様が使ってたかも？って言われてる斧"}']}, HideFlags: 2, Unbreakable: 1b, Enchantments: [{id: "minecraft:knockback", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.attack_speed", Name: "generic.attack_speed", Amount: -0.5d, Operation: 1, UUID: [I; 302387993, 1306414312, -1657600721, 625582447], Slot: "mainhand"}, {AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Amount: -0.15d, Operation: 1, UUID: [I; -1252054546, 1022576539, -2005804764, 1600723713]}, {AttributeName: "generic.attack_damage", Name: "generic.attack_damage", Amount: 8, Operation: 1, UUID: [I; 1339503676, 40912421, -1958572628, -1664393824], Slot: "mainhand"}]} 1
## 固定スキル 一刀両断
item replace entity @s hotbar.1 with carrot_on_a_stick{display: {Name: '[{"text":"固定スキル1:"},{"translate":"一刀両断"}]', Lore: ['{"text":"アタッカーの固有スキル:一刀両断"}', '{"text":"3秒間一撃の攻撃力を持つ"}']}} 1

## 防具一式
item replace entity @s armor.head with iron_helmet{Unbreakable: 1b} 1
item replace entity @s armor.chest with iron_chestplate{Unbreakable: 1b} 1
item replace entity @s armor.legs with iron_leggings{Unbreakable: 1b} 1
item replace entity @s armor.feet with iron_boots{Unbreakable: 1b} 1
