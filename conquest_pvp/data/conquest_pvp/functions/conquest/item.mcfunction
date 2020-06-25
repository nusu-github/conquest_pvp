say アイテムを設置した！敵よりも先に見つけ取りに行け！
execute if score レッドチーム total_point matches 25000.. run scoreboard players set レッドチーム item 1
execute if score ブルーチーム total_point matches 25000.. run scoreboard players set ブルーチーム item 1
summon item 120 140 0 {CustomNameVisible: 1b, CustomName: '{"text":"ジャンプブースト"}', Item: {id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:leaping"}}}
summon item 120 140 0 {CustomNameVisible: 1b, CustomName: '{"text":"リジェネ"}', Item: {id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:regeneration"}}}
summon item 120 140 0 {CustomNameVisible: 1b, CustomName: '{"text":"ダメージ"}', Item: {id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:harming"}}}
summon item 120 140 0 {CustomNameVisible: 1b, CustomName: '{"text":"ジャンプブースト"}', Item: {id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:leaping"}}}
summon item 120 140 0 {CustomNameVisible: 1b, CustomName: '{"text":"リジェネ"}', Item: {id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:regeneration"}}}
summon item 120 140 0 {CustomNameVisible: 1b, CustomName: '{"text":"ダメージ"}', Item: {id: "minecraft:potion", Count: 1b, tag: {Potion: "minecraft:harming"}}}
spreadplayers 120 0 10 35 false @e[type=item,x=111,y=129,z=-8,dx=18,dy=20,dz=17]
