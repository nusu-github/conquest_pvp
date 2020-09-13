### タンク
clear @s
## 唯一無二の盾
replaceitem entity @s hotbar.0 shield{display:{Name:'{"text":"唯一無二の盾"}',Lore:['{"text":"きた！盾きた！メイン盾きた！これで勝つる！"}','{"text":"ついでにノックバックもある"}','{"text":"盾でダメージを防ぐと周りにいる同じチームにダメージ軽減が付く"}']},Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:1,Operation:1,UUIDLeast:-8179520,UUIDMost:9873858,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1024,Operation:0,UUIDLeast:-8540319,UUIDMost:763362,Slot:"mainhand"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.25,Operation:1,UUIDLeast:4488513,UUIDMost:9367886}]} 1
## 固有スキル 唯一無二の盾
replaceitem entity @s hotbar.1 carrot_on_a_stick{display: {Name: '[{"text":"固定スキル1:"},{"translate":"唯一無二の盾"}]', Lore: ['{"text":"タンクの固有スキル:唯一無二の盾"}', '{"text":"5秒間リジェネ+攻撃完全無効化"}']}} 1

replaceitem entity @s hotbar.7 minecraft:splash_potion{Potion:"minecraft:strong_healing"} 1
## 防具一式
replaceitem entity @s armor.head iron_helmet{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:1024,Operation:0,UUIDLeast:-1903306,UUIDMost:5315173},{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:10,Operation:0,UUIDLeast:-9376972,UUIDMost:9426007}]} 1
replaceitem entity @s armor.chest iron_chestplate{Unbreakable:1b} 1
replaceitem entity @s armor.legs iron_leggings{Unbreakable:1b} 1
replaceitem entity @s armor.feet iron_boots{Unbreakable:1b} 1
## ジョブ選択
scoreboard players set @s archer 0
scoreboard players set @s assassin 0
scoreboard players set @s attacker 0
scoreboard players set @s tank 1
scoreboard players set @s support 0
## チーム表示
replaceitem entity @a[team=red] hotbar.8 red_stained_glass_pane 1
replaceitem entity @a[team=blue] hotbar.8 blue_stained_glass_pane 1
