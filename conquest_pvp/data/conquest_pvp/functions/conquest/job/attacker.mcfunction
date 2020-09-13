### アタッカー
clear @s
## バトルアックス
replaceitem entity @s hotbar.0 diamond_axe{display:{Name:'{"text":"バトルアックス"}',Lore:['{"text":"神様が使ってたかも？って言われてる斧"}']},Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-0.5,Operation:1,UUIDLeast:-8855560,UUIDMost:-6796515,Slot:"mainhand"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.15,Operation:1,UUIDLeast:-9494360,UUIDMost:5568580},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:8,Operation:1,UUIDLeast:7887642,UUIDMost:8981125,Slot:"mainhand"}]} 1
## 固定スキル 一刀両断
replaceitem entity @s hotbar.1 carrot_on_a_stick{display: {Name: '[{"text":"固定スキル1:"},{"translate":"一刀両断"}]', Lore: ['{"text":"アタッカーの固有スキル:一刀両断"}', '{"text":"3秒間一撃の攻撃力を持つ"}']}} 1

replaceitem entity @s hotbar.7 minecraft:splash_potion{Potion:"minecraft:strong_healing"} 1
## 防具一式
replaceitem entity @s armor.head iron_helmet{Unbreakable:1b} 1
replaceitem entity @s armor.chest iron_chestplate{Unbreakable:1b} 1
replaceitem entity @s armor.legs iron_leggings{Unbreakable:1b} 1
replaceitem entity @s armor.feet iron_boots{Unbreakable:1b} 1
## ジョブ選択
scoreboard players set @s archer 0
scoreboard players set @s assassin 0
scoreboard players set @s attacker 1
scoreboard players set @s tank 0
scoreboard players set @s support 0
## チーム表示
replaceitem entity @a[team=red] hotbar.8 red_stained_glass_pane 1
replaceitem entity @a[team=blue] hotbar.8 blue_stained_glass_pane 1
