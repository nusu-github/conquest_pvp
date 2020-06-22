scoreboard players set @s recharge 1
scoreboard players set @s used_crossbow 0
effect clear @s
replaceitem entity @s hotbar.1 air 1
title @s actionbar [{"text":"残り:"},{"score":{"name":"@s","objective":"seconds"}},{"text":"/5"}]
replaceitem entity @s hotbar.0 crossbow{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:-2,Operation:1,UUIDLeast:-9942757,UUIDMost:3030149,Slot:"mainhand"},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-1024,Operation:0,UUIDLeast:7403637,UUIDMost:5162615,Slot:"mainhand"}],ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:2,Colors:[I;16711680]},{Type:3,Colors:[I;16711680]}]}}},{},{}],Charged:1b} 1
execute if score @s seconds matches 5.. run function conquest_pvp:conquest/job/archer
execute if score @s seconds matches 5.. run replaceitem entity @s hotbar.1 air 1
execute if score @s seconds matches 5.. run scoreboard players set @s used_stick 0
execute if score @s seconds matches 5.. run scoreboard players set @s seconds 0
