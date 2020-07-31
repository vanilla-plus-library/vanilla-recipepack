scoreboard players set #dependencies twvp.temp 0
execute store result score #dependencies twvp.temp run data get storage thewii:vp_library/data modules.block_placement

execute if score #dependencies twvp.temp matches ..0 unless data storage thewii:vp_library/data modules run function thewii:vp_library/core/install

execute if score #dependencies twvp.temp matches ..-1 run scoreboard players set #dependencies twvp.temp 0
execute store result storage thewii:vp_library/data modules.block_placement int 1 run scoreboard players add #dependencies twvp.temp 1