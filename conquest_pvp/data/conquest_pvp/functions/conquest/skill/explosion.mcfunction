scoreboard players set @s recharge 1
scoreboard players set @s used_crossbow 0
effect clear @s
replaceitem entity @s hotbar.1 air 1
title @s actionbar [{"text":"残り:"},{"score":{"name":"@s","objective":"seconds"}},{"text":"/5"}]
replaceitem entity @s hotbar.0 crossbow{display:{Name:'{"text":"エクスプロージョン！！"}',Lore:['{"text":"黒より黒く闇より暗き漆黒に我が深紅の混淆を望みたもう"}','{"text":"覚醒のとき来たれり"}','{"text":"無謬の境界に落ちし理"}','{"text":"無行の歪みとなりて現出せよ！"}','{"text":"踊れ踊れ踊れ、我が力の奔流に望むは崩壊なり"}','{"text":"並ぶ者なき崩壊なり"}','{"text":"万象等しく灰塵に帰し、深淵より来たれ"}','{"text":"これこそが究極の攻撃魔法、エクスプロージョン！"}','{"text":"注意: 対象は自分も味方もも含まれる","color":"red"}']},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:-1,Operation:1,UUIDLeast:-467038,UUIDMost:8135957,Slot:"mainhand"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-1024,Operation:0,UUIDLeast:-4297064,UUIDMost:7690118,Slot:"mainhand"}],ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16711680]}]}}},{},{}],Charged:1b} 1
execute if score @s seconds matches 5.. run function conquest_pvp:conquest/job/archer
execute if score @s seconds matches 5.. run replaceitem entity @s hotbar.1 air 1
execute if score @s seconds matches 5.. run scoreboard players set @s used_stick 0
execute if score @s seconds matches 5.. run scoreboard players set @s seconds 0
