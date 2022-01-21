# サポート
#### 開発者向け情報 レッドチームはe60033(15073331) ブルーチームは0000ff(255)

## ジョブ選択
scoreboard players set @s archer 0
scoreboard players set @s assassin 0
scoreboard players set @s attacker 0
scoreboard players set @s tank 0
scoreboard players set @s support 1

## 直接コマンドを打たれた場合
execute as @s[scores={is_succeeded=0}] store success score @s is_succeeded run function conquest_pvp:conquest/re_setup

## レッドチーム
### 固定スキル スピードアップ
item replace entity @s[team=red] hotbar.0 with crossbow{display: {Name: '[{"text":"固定スキル:"},{"text":"スピードアップ"}]', Lore: ['{"text":"サポートの固有スキル:スピードアップ"}', '{"text":"着弾した場所周辺の味方がスピードアップする"}']}, Unbreakable: 1b, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:swiftness", CustomPotionColor: 15073331}}, {}, {}], Charged: 1b} 1
### 固定スキル 索敵
item replace entity @s[team=red] hotbar.1 with crossbow{display: {Name: '[{"text":"固定スキル:"},{"text":"索敵"}]', Lore: ['{"text":"サポートの固有スキル:索敵"}', '{"text":"着弾した場所周辺の敵が発光する"}']}, Unbreakable: 1b, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:water", CustomPotionColor: 15073331}}, {}, {}], Charged: 1b} 1
### 固定スキル スピードダウン
item replace entity @s[team=red] hotbar.2 with crossbow{display: {Name: '[{"text":"固定スキル:"},{"text":"スピードダウン"}]', Lore: ['{"text":"サポートの固有スキル:スピードダウン"}', '{"text":"着弾した場所周辺の敵がスピードダウンする"}']}, Unbreakable: 1b, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:slowness", CustomPotionColor: 15073331}}, {}, {}], Charged: 1b} 1
### 固定スキル バリア
item replace entity @s[team=red] hotbar.3 with crossbow{display: {Name: '[{"text":"固定スキル:"},{"text":"バリア"}]', Lore: ['{"text":"サポートの固有スキル:バリア"}', '{"text":"着弾した場所周辺の味方にバリアがつく"}']}, Unbreakable: 1b, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:healing", CustomPotionColor: 15073331}}, {}, {}], Charged: 1b} 1
### 固定スキル 監視
item replace entity @s[team=red] hotbar.4 with crossbow{display: {Name: '[{"text":"固定スキル:"},{"text":"監視"}]', Lore: ['{"text":"サポートの固有スキル:監視"}', '{"text":"着弾した場所に自動で敵を見つける"}', '{"text":"味方が出てくる"}']}, Unbreakable: 1b, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:weakness", CustomPotionColor: 15073331}}, {}, {}], Charged: 1b} 1

## ブルーチーム
### 固定スキル スピードアップ
item replace entity @s[team=blue] hotbar.0 with crossbow{display: {Name: '[{"text":"固定スキル:"},{"text":"スピードアップ"}]', Lore: ['{"text":"サポートの固有スキル:スピードアップ"}', '{"text":"着弾した場所周辺の味方がスピードアップする"}']}, Unbreakable: 1b, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:swiftness", CustomPotionColor: 255}}, {}, {}], Charged: 1b} 1
### 固定スキル 索敵
item replace entity @s[team=blue] hotbar.1 with crossbow{display: {Name: '[{"text":"固定スキル:"},{"text":"索敵"}]', Lore: ['{"text":"サポートの固有スキル:索敵"}', '{"text":"着弾した場所周辺の敵が発光する"}']}, Unbreakable: 1b, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:water", CustomPotionColor: 255}}, {}, {}], Charged: 1b} 1
### 固定スキル スピードダウン
item replace entity @s[team=blue] hotbar.2 with crossbow{display: {Name: '[{"text":"固定スキル:"},{"text":"スピードダウン"}]', Lore: ['{"text":"サポートの固有スキル:スピードダウン"}', '{"text":"着弾した場所周辺の敵がスピードダウンする"}']}, Unbreakable: 1b, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:slowness", CustomPotionColor: 255}}, {}, {}], Charged: 1b} 1
### 固定スキル バリア
item replace entity @s[team=blue] hotbar.3 with crossbow{display: {Name: '[{"text":"固定スキル:"},{"text":"バリア"}]', Lore: ['{"text":"サポートの固有スキル:バリア"}', '{"text":"着弾した場所周辺の味方にバリアがつく"}']}, Unbreakable: 1b, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:healing", CustomPotionColor: 255}}, {}, {}], Charged: 1b} 1
### 固定スキル 監視
item replace entity @s[team=blue] hotbar.4 with crossbow{display: {Name: '[{"text":"固定スキル:"},{"text":"監視"}]', Lore: ['{"text":"サポートの固有スキル:監視"}', '{"text":"着弾した場所に自動で敵を見つける"}', '{"text":"味方が出てくる"}']}, Unbreakable: 1b, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:weakness", CustomPotionColor: 255}}, {}, {}], Charged: 1b} 1

## ノックバック
item replace entity @s hotbar.5 with stick{display: {Name: '{"text":"ノックバック"}', Lore: ['{"text":"若干敵を吹き飛ばせるかもしれない棒"}']}, HideFlags: 2, Enchantments: [{id: "minecraft:knockback", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.attack_speed", Name: "generic.attack_speed", Amount: 512, Operation: 0, UUID: [I; 1963796825, -480950104, -2053344431, 1272679312]}, {AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 1, Operation: 0, UUID: [I; 454117708, -1722793942, -1201265657, 849988830]}, {AttributeName: "generic.attack_damage", Name: "generic.attack_damage", Amount: 1, Operation: 0, UUID: [I; -678224837, 1181634550, -1252753464, -958350885]}]} 1

## 防具
item replace entity @s armor.head with leather_helmet{Unbreakable: 1b, Enchantments: [{id: "minecraft:binding_curse", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Amount: 0.05d, Operation: 1, UUID: [I; 995038920, 1097024786, -1674554374, -401709249], Slot: "legs"}]} 1
