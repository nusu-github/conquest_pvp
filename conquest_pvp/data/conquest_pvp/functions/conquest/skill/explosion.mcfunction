# アーチャー 固定スキル1
scoreboard players set @s recharge 1
effect clear @s
item replace entity @s hotbar.1 with air 1
title @s actionbar [{"text":"残り:"},{"score":{"name":"@s","objective":"seconds"}},{"text":"/5"}]
item replace entity @s hotbar.0 with crossbow{display: {Name: '{"text":"エクスプロージョン!!"}', Lore: ['{"text":"黒より黒く闇より暗き漆黒に我が深紅の混淆を望みたもう"}', '{"text":"覚醒のとき来たれり"}', '{"text":"無謬の境界に落ちし理"}', '{"text":"無行の歪みとなりて現出せよ！"}', '{"text":"踊れ踊れ踊れ、我が力の奔流に望むは崩壊なり"}', '{"text":"並ぶ者なき崩壊なり"}', '{"text":"万象等しく灰塵に帰し、深淵より来たれ"}', '{"text":"これこそが究極の攻撃魔法、エクスプロージョン！"}']}, Unbreakable: 1b, AttributeModifiers: [{AttributeName: "generic.armor", Name: "generic.armor", Amount: -1, Operation: 1, UUID: [I; -1745742469, 1758612658, -1705414928, 2052963477], Slot: "mainhand"}, {AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Amount: -1024, Operation: 0, UUID: [I; 1771901768, -1833614311, -1560805979, 453447478], Slot: "mainhand"}], ChargedProjectiles: [{id: "minecraft:firework_rocket", Count: 1b, tag: {Fireworks: {Explosions: [{Type: 0, Colors: [I; 16711680]}]}}}, {id: "minecraft:firework_rocket", Count: 1b, tag: {Fireworks: {Explosions: [{Type: 4, Colors: [I; 16711680]}]}}}, {id: "minecraft:firework_rocket", Count: 1b, tag: {Fireworks: {Explosions: [{Type: 4, Colors: [I; 16711680]}]}}}], Charged: 1b} 1
execute if score @s seconds matches 5.. run function conquest_pvp:conquest/job/archer
execute if score @s seconds matches 5.. run item replace entity @s hotbar.1 with air 1
execute if score @s seconds matches 5.. run scoreboard players set @s used_stick 0
execute if score @s seconds matches 5.. run scoreboard players set @s seconds 0
