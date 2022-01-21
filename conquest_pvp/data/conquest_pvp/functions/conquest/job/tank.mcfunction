# タンク

## ジョブ選択
scoreboard players set @s archer 0
scoreboard players set @s assassin 0
scoreboard players set @s attacker 0
scoreboard players set @s tank 1
scoreboard players set @s support 0

## 直接コマンドを打たれた場合
execute as @s[scores={is_succeeded=0}] store success score @s is_succeeded run function conquest_pvp:conquest/re_setup

## 唯一無二の盾
item replace entity @s hotbar.0 with shield{display: {Name: '{"text":"唯一無二の盾"}', Lore: ['{"text":"きた！盾きた！メイン盾きた！これで勝つる！"}', '{"text":"ついでにノックバックもある"}', '{"text":"盾でダメージを防ぐと周りにいる同じチームにダメージ軽減が付く"}']}, HideFlags: 2, Unbreakable: 1b, Enchantments: [{id: "minecraft:knockback", lvl: 5s}], AttributeModifiers: [{AttributeName: "generic.attack_damage", Name: "generic.attack_damage", Amount: 1, Operation: 1, UUID: [I; 441825408, 1248673943, -1535163611, 118759146], Slot: "mainhand"}, {AttributeName: "generic.attack_speed", Name: "generic.attack_speed", Amount: 512, Operation: 0, UUID: [I; -355724137, -120764786, -1643781917, -257245208], Slot: "mainhand"}, {AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Amount: -0.25d, Operation: 1, UUID: [I; -761183152, 602423631, -1147242351, 1525357308]}]} 1
## 固有スキル 唯一無二の盾
item replace entity @s hotbar.1 with carrot_on_a_stick{display: {Name: '[{"text":"固定スキル1:"},{"translate":"唯一無二の盾"}]', Lore: ['{"text":"タンクの固有スキル:唯一無二の盾"}', '{"text":"5秒間リジェネ+攻撃完全無効化"}']}} 1

## 防具一式
item replace entity @s armor.head with iron_helmet{HideFlags: 2, Unbreakable: 1b, AttributeModifiers: [{AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 512, Operation: 0, UUID: [I; 1943081719, 1247037241, -2074243243, -1957493502]}, {AttributeName: "generic.max_health", Name: "generic.max_health", Amount: 10, Operation: 0, UUID: [I; -138379026, -778680505, -1545648662, 1632254786]}]} 1
item replace entity @s armor.chest with iron_chestplate{Unbreakable: 1b} 1
item replace entity @s armor.legs with iron_leggings{Unbreakable: 1b} 1
item replace entity @s armor.feet with iron_boots{Unbreakable: 1b} 1
