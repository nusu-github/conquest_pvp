# セットアップ
# スコアボードの設定やらなんやらをする

## 各種ゲームルール設定 調整禁止以外は各自で調整推奨
### 調整禁止
gamerule doMobSpawning false
gamerule drowningDamage false
gamerule fallDamage false
gamerule mobGriefing false
gamerule doMobLoot false
gamerule keepInventory true
gamerule naturalRegeneration false
gamerule spawnRadius 0
gamerule doImmediateRespawn true
gamerule doEntityDrops false
### 調整可
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule reducedDebugInfo true


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
scoreboard objectives add used_potion used:splash_potion
scoreboard objectives add inground_arrow dummy
scoreboard objectives add sneak custom:sneak_time
scoreboard objectives add sneak_time dummy
scoreboard objectives add is_succeeded dummy
scoreboard objectives add capture_done dummy
scoreboard objectives add start_setup dummy

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
scoreboard objectives add red_count dummy 
scoreboard objectives add blue_count dummy 
scoreboard objectives add total_count dummy 
scoreboard objectives add tmp_total_count dummy 
scoreboard objectives add division dummy 

## ダメージ
scoreboard objectives add damage custom:damage_taken "ダメージ"
scoreboard objectives add health health "体力"

## 時間
scoreboard objectives add tick dummy "ティック"
scoreboard objectives add seconds dummy "秒"
scoreboard objectives add count_down dummy
scoreboard objectives add item dummy

# ディスプレイ系リセット
scoreboard objectives setdisplay belowName
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar
bossbar remove status
bossbar remove blue_total_point
bossbar remove red_total_point

# チームの状態を表示
bossbar add status [{"text":"レッドチーム","color":"red"},{"text":" - ","color":"dark_gray"},{"score":{"name":"red_count","objective":"red_count"},"color":"gold"},{"text":" | ","color":"dark_gray"},{"score":{"name":"total_count","objective":"total_count"},"color":"white"},{"text":" | ","color":"dark_gray"},{"text":"ブルーチーム","color":"blue"},{"text":" - ","color":"dark_gray"},{"score":{"name":"blue_count","objective":"blue_count"},"color":"gold"}]

### リセット
## 試合中なら強制停止
team leave @e
execute if score conquest conquest matches 1 run function conquest_pvp:conquest/emergency_stop
scoreboard players reset *

say セットアップ完了
