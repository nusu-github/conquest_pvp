### アーチャー
clear @s
## インフィニティ・ボウ
replaceitem entity @s hotbar.0 minecraft:bow{display:{Name:'{"text":"インフィニティ・ボウ"}',Lore:['{"text":"なんかすごい弓"}','{"text":"持っている間は防御力が下がるので注意"}']},Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:2s},{id:"minecraft:punch",lvl:2s},{id:"minecraft:infinity",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:-0.25,Operation:1,UUIDLeast:2150571,UUIDMost:9497484},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.1,Operation:1,UUIDLeast:8860326,UUIDMost:-2803274}]} 1
## 無適用の矢
replaceitem entity @s inventory.0 arrow 1
## 固定スキル 爆破
replaceitem entity @s hotbar.1 carrot_on_a_stick{display: {Name: '[{"text":"固定スキル1:"},{"translate":"爆発"}]', Lore: ['{"text":"アーチャーの固有スキル:爆発"}', '{"text":"5秒間弓がクロスボウに、矢が花火になる"}', '{"text":"爆破は味方にも当たるので注意して使おう"}']}} 1

replaceitem entity @s hotbar.7 minecraft:splash_potion{Potion:"minecraft:strong_healing"} 1
## 防具一式消去
replaceitem entity @s armor.head air 1
replaceitem entity @s armor.chest air 1
replaceitem entity @s armor.legs air 1
replaceitem entity @s armor.feet air 1
## ジョブ選択
scoreboard players set @s archer 1
scoreboard players set @s assassin 0
scoreboard players set @s attacker 0
scoreboard players set @s tank 0
scoreboard players set @s support 0
## チーム表示
replaceitem entity @a[team=red] hotbar.8 red_stained_glass_pane 1
replaceitem entity @a[team=blue] hotbar.8 blue_stained_glass_pane 1
