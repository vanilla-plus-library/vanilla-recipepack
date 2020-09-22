# Find player
scoreboard players set #found_player twvp.temp 0

scoreboard players operation #id twvp.temp = @s twvp.id
execute as @a[tag=twvp.prepared_villager] if score #found_player twvp.temp matches 0 if score @s twvp.id = #id twvp.temp run scoreboard players set #found_player twvp.temp 1

execute if score #found_player twvp.temp matches 0 run function thewii:vp_library/click_detections/villager/check2