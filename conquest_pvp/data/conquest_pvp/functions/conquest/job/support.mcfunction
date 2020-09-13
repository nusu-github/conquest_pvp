### サポート
clear @s
## 固定スキル スピードアップ
replaceitem entity @s hotbar.0 crossbow{display: {Name: '[{"text":"固定スキル:"},{"text":"スピードアップ"}]', Lore: ['{"text":"サポートの固有スキル:スピードアップ"}', '{"text":"着弾した場所周辺の味方がスピードアップする"}']}, Unbreakable: 1b, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:swiftness", CustomPotionColor: 16777215}}, {}, {}], Charged: 1b} 1
## 固定スキル 索敵
replaceitem entity @s hotbar.1 crossbow{display: {Name: '[{"text":"固定スキル:"},{"text":"索敵"}]', Lore: ['{"text":"サポートの固有スキル:索敵"}', '{"text":"着弾した場所周辺の敵が発光する"}']}, Unbreakable: 1b, ChargedProjectiles: [{id: "minecraft:spectral_arrow", Count: 1b}, {}, {}], Charged: 1b} 1
## 固定スキル スピードダウン
replaceitem entity @s hotbar.2 crossbow{display: {Name: '[{"text":"固定スキル:"},{"text":"スピードダウン"}]', Lore: ['{"text":"サポートの固有スキル:スピードダウン"}', '{"text":"着弾した場所周辺の敵がスピードダウンする"}']}, Unbreakable: 1b, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:slowness", CustomPotionColor: 16777215}}, {}, {}], Charged: 1b} 1
## 固定スキル バリア
replaceitem entity @s hotbar.3 crossbow{display: {Name: '[{"text":"固定スキル:"},{"text":"バリア"}]', Lore: ['{"text":"サポートの固有スキル:バリア"}', '{"text":"着弾した場所周辺の味方にバリアがつく"}']}, Unbreakable: 1b, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:healing", CustomPotionColor: 16777215}}, {}, {}], Charged: 1b} 1
replaceitem entity @s hotbar.4 crossbow{display: {Name: '[{"text":"固定スキル:"},{"text":"監視"}]', Lore: ['{"text":"サポートの固有スキル:監視"}', '{"text":"着弾した場所に自動で敵を見つける"}', '{"text":"味方が出てくる"}']}, Unbreakable: 1b, ChargedProjectiles: [{id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:weakness", CustomPotionColor: 16777215}}, {}, {}], Charged: 1b} 1
replaceitem entity @s hotbar.5 stick{display: {Name: '{"text":"ノックバック"}'}, Enchantments: [{id: "minecraft:knockback", lvl: 1s}]} 1

replaceitem entity @s hotbar.7 minecraft:splash_potion{Potion:"minecraft:strong_healing"} 1
## 防具一式
replaceitem entity @s armor.head leather_helmet{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.05,Operation:1,UUIDLeast:8452488,UUIDMost:1084201,Slot:"legs"}]} 1
replaceitem entity @s armor.chest air 1
replaceitem entity @s armor.legs air 1
replaceitem entity @s armor.feet air 1
## ジョブ選択
scoreboard players set @s archer 0
scoreboard players set @s assassin 0
scoreboard players set @s attacker 0
scoreboard players set @s tank 0
scoreboard players set @s support 1
## チーム表示
replaceitem entity @a[team=red] hotbar.8 red_stained_glass_pane 1
replaceitem entity @a[team=blue] hotbar.8 blue_stained_glass_pane 1
