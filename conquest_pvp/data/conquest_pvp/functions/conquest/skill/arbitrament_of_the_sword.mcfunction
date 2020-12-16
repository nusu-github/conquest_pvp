scoreboard players set @s recharge 1
effect clear @s
#replaceitem entity @s hotbar.0 air 1
title @s actionbar [{"text":"残り:"},{"score":{"name":"@s","objective":"seconds"}},{"text":"/1"}]
replaceitem entity @s hotbar.0 diamond_axe{display:{Name:'{"text":"スキル：一刀両断"}',Lore:['{"text":"神様が使ってたかも？って言われてる斧"}','{"text":"スキルで力が開放されている"}']},HideFlags:1,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1024,Operation:0,UUIDLeast:6317820,UUIDMost:-6756957,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:2048,Operation:0,UUIDLeast:1164905,UUIDMost:-9833739,Slot:"mainhand"},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:1024,Operation:0,UUIDLeast:-3284157,UUIDMost:5842790,Slot:"mainhand"}]} 1
replaceitem entity @s hotbar.1 diamond_axe{display:{Name:'{"text":"スキル：一刀両断"}',Lore:['{"text":"神様が使ってたかも？って言われてる斧"}','{"text":"スキルで力が開放されている"}']},HideFlags:1,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1024,Operation:0,UUIDLeast:6317820,UUIDMost:-6756957,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:2048,Operation:0,UUIDLeast:1164905,UUIDMost:-9833739,Slot:"mainhand"},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:1024,Operation:0,UUIDLeast:-3284157,UUIDMost:5842790,Slot:"mainhand"}]} 1
execute if score @s seconds matches 1.. run function conquest_pvp:conquest/job/attacker
execute if score @s seconds matches 1.. run replaceitem entity @s hotbar.1 air 1
execute if score @s seconds matches 1.. run scoreboard players set @s used_stick 0
execute if score @s seconds matches 1.. run scoreboard players set @s seconds 0
