# アーチャー

## ジョブ選択
scoreboard players set @s archer 1
scoreboard players set @s assassin 0
scoreboard players set @s attacker 0
scoreboard players set @s tank 0
scoreboard players set @s support 0

## 直接コマンドを打たれた場合
execute as @s[scores={is_succeeded=0}] store success score @s is_succeeded run function conquest_pvp:conquest/re_setup

## インフィニティ・ボウ
item replace entity @s hotbar.0 with bow{display:{Name:'{"text":"インフィニティ・ボウ"}',Lore:['{"text":"なんかすごい弓"}','{"text":"持っている間は防御力が下がるので注意"}']},HideFlags:2,Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:2s},{id:"minecraft:punch",lvl:2s},{id:"minecraft:infinity",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:-0.1,Operation:0,UUID:[I;-571907984,1506821675,-1439123077,-1401795363]}]} 1
## 無適用の矢
item replace entity @s inventory.0 with arrow 1
## 固定スキル 爆破
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'[{"text":"固定スキル1:"},{"translate":"エクスプロージョン！！"}]',Lore:['{"text":"アーチャーの固有スキル:エクスプロージョン！！"}','{"text":"5秒間弓がクロスボウに、矢が花火になる"}']}} 1
