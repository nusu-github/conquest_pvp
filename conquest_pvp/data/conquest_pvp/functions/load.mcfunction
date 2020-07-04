# セットアップ
# スコアボードの設定やらなんやらをする

### 各種ゲームルール設定 調整禁止以外は各自で調整推奨
# 調整禁止
gamerule doMobSpawning false
gamerule doFireTick false
gamerule drowningDamage false
gamerule fallDamage false
gamerule keepInventory true
gamerule naturalRegeneration false
gamerule spawnRadius 1
gamerule doImmediateRespawn true
gamerule doEntityDrops false
# 調整可
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule maxEntityCramming 0
gamerule mobGriefing false
gamerule randomTickSpeed 0
gamerule showDeathMessages true
gamerule doInsomnia false

## リスポン
scoreboard objectives add death deathCount "計算用_デス数"
scoreboard objectives add respawn_time dummy "リスポーン時間"
scoreboard objectives add target dummy "ターゲット"

## 表示
scoreboard objectives add death_count deathCount "デス数"
scoreboard objectives add kill_count custom:player_kills "キル数"

## ジョブ
scoreboard objectives add assassin dummy "アサシン"
scoreboard objectives add archer dummy "アーチャー"
scoreboard objectives add attacker dummy "アタッカー"
scoreboard objectives add tank dummy "タンク"
scoreboard objectives add support dummy "サポート"

## 判定
scoreboard objectives add used_stick used:carrot_on_a_stick
scoreboard objectives add used_shield custom:damage_blocked_by_shield
scoreboard objectives add used_crossbow used:crossbow
scoreboard objectives add used_potion used:potion
scoreboard objectives add inground_arrow dummy
scoreboard objectives add sneak custom:sneak_time
scoreboard objectives add is_succeeded dummy

## その他
scoreboard objectives add error dummy "誤差"
scoreboard objectives add total_point dummy "トータルポイント"
scoreboard objectives add conquest dummy "コンクエストフラグ"
scoreboard objectives add red dummy "レッドポイント"
scoreboard objectives add blue dummy "ブルーポイント"
scoreboard objectives add stage_red dummy "レッドステージ"
scoreboard objectives add stage_blue dummy "ブルーステージ"
scoreboard objectives add one_damage dummy "ダメージでキャンセル"
scoreboard objectives add recharge dummy "リチャージ"


## ダメージ
scoreboard objectives add damage custom:damage_taken "ダメージ"
scoreboard objectives add health health "体力"

## 時間
scoreboard objectives add tick dummy "ティック"
scoreboard objectives add seconds dummy "秒"
scoreboard objectives add count_down dummy
scoreboard objectives add item dummy

### リセット
## 試合中なら強制停止
execute if score conquest conquest matches 1 run function conquest_pvp:conquest/emergency_stop
scoreboard players reset death
scoreboard players reset respawn_time
scoreboard players reset target
scoreboard players reset death_count
scoreboard players reset kill_count
scoreboard players reset error
scoreboard players reset total_point
scoreboard players reset conquest
scoreboard players reset red
scoreboard players reset blue
scoreboard players reset stage_red
scoreboard players reset stage_blue
scoreboard players reset assassin
scoreboard players reset archer
scoreboard players reset attacker
scoreboard players reset tank
scoreboard players reset support
scoreboard players reset one_damage
scoreboard players reset recharge
scoreboard players reset used_stick
scoreboard players reset used_shield
scoreboard players reset used_crossbow
scoreboard players reset used_potion
scoreboard players reset inground_arrow
scoreboard players reset sneak
scoreboard players reset auto_aim
scoreboard players reset damage
scoreboard players reset health
scoreboard players reset tick
scoreboard players reset seconds
scoreboard players reset is_succeeded
scoreboard players reset item
scoreboard players reset count_down

scoreboard players set @a death 0
scoreboard players set @a respawn_time -1
scoreboard players set @a target 0
scoreboard players set @a death_count 0
scoreboard players set @a kill_count 0
scoreboard players set @a error 0
scoreboard players set @a total_point 0
scoreboard players set @a conquest 0
scoreboard players set @a red 0
scoreboard players set @a blue 0
scoreboard players set @a stage_red 0
scoreboard players set @a stage_blue 0
scoreboard players set @a assassin 0
scoreboard players set @a archer 0
scoreboard players set @a attacker 0
scoreboard players set @a tank 0
scoreboard players set @a support 0
scoreboard players set @a one_damage 0
scoreboard players set @a recharge 0
scoreboard players set @a used_stick 0
scoreboard players set @a used_shield 0
scoreboard players set @a used_crossbow 0
scoreboard players set @a used_potion 0
scoreboard players set @a inground_arrow 0
scoreboard players set @a sneak 0
scoreboard players set @a damage 0
scoreboard players set @a health 0
scoreboard players set @a tick 0
scoreboard players set @a seconds 0
scoreboard players set @a is_succeeded 0
scoreboard players set @e item 0
scoreboard players set @e count_down 0

say セットアップ完了