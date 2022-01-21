# アサシン

## ジョブ選択
scoreboard players set @s archer 0
scoreboard players set @s assassin 1
scoreboard players set @s attacker 0
scoreboard players set @s tank 0
scoreboard players set @s support 0

## 直接コマンドを打たれた場合
execute as @s[scores={is_succeeded=0}] store success score @s is_succeeded run function conquest_pvp:conquest/re_setup

## 命を刈り取る形をしている鎌
item replace entity @s hotbar.0 with diamond_hoe{display: {Name: '{"text":"命を刈り取る形をしている鎌"}', Lore: ['{"text":"命を刈り取る形をしているだろう？"}']}, Unbreakable: 1b, AttributeModifiers: [{AttributeName: "generic.attack_speed", Name: "generic.attackSpeed", Amount: 1024, Operation: 0, UUID: [I; -1, -570596, -1, -6265189], Slot: "mainhand"}, {AttributeName: "generic.attack_damage", Name: "generic.attackDamage", Amount: 4, Operation: 1, UUID: [I; 0, 2319445, -1, -4303913], Slot: "mainhand"}, {AttributeName: "generic.movement_speed", Name: "generic.movementSpeed", Amount: 0.2d, Operation: 1, UUID: [I; 0, 7878965, -1, -9163928], Slot: "mainhand"}]} 1
## 固定スキル 透明化
item replace entity @s hotbar.1 with carrot_on_a_stick{display: {Name: '[{"text":"固定スキル1:"},{"translate":"透明化"}]', Lore: ['{"text":"アサシンの固有スキル:透明化"}', '{"text":"30秒かダメージを受けると効果がなくなる"}']}} 1
