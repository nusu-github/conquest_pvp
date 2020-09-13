### アサシン
clear @s
## 命を刈り取る形をしている鎌
replaceitem entity @s hotbar.0 diamond_hoe{display:{Name:'{"text":"命を刈り取る形をしている鎌"}',Lore:['{"text":"命を刈り取る形をしているだろう？"}']},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1024,Operation:0,UUIDLeast:-6265189,UUIDMost:-570596,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4,Operation:1,UUIDLeast:-4303913,UUIDMost:2319445,Slot:"mainhand"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.2,Operation:1,UUIDLeast:-9163928,UUIDMost:7878965,Slot:"mainhand"}]} 1
## 固定スキル 透明化
replaceitem entity @s hotbar.1 carrot_on_a_stick{display: {Name: '[{"text":"固定スキル1:"},{"translate":"透明化"}]', Lore: ['{"text":"アサシンの固有スキル:透明化"}', '{"text":"30秒かダメージを受けると効果がなくなる"}']}} 1

replaceitem entity @s hotbar.7 minecraft:splash_potion{Potion:"minecraft:strong_healing"} 1
## 防具一式消去
replaceitem entity @s armor.head air 1
replaceitem entity @s armor.chest air 1
replaceitem entity @s armor.legs air 1
replaceitem entity @s armor.feet air 1
## ジョブ選択
scoreboard players set @s archer 0
scoreboard players set @s assassin 1
scoreboard players set @s attacker 0
scoreboard players set @s tank 0
scoreboard players set @s support 0
## チーム表示
replaceitem entity @a[team=red] hotbar.8 red_stained_glass_pane 1
replaceitem entity @a[team=blue] hotbar.8 blue_stained_glass_pane 1
