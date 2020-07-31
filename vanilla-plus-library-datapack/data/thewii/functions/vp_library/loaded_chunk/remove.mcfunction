scoreboard players set #dependencies vp_temp 0
execute store result score #dependencies vp_temp run data get storage thewii:vp_library/data modules.loaded_chunk

execute if score #dependencies vp_temp matches ..0 run scoreboard players set #dependencies vp_temp 1
execute store result storage thewii:vp_library/data modules.loaded_chunk int 1 run scoreboard players remove #dependencies vp_temp 1
execute store result score #dependencies vp_temp run scoreboard players get #dependencies vp_temp

execute if score #dependencies vp_temp matches ..0 run function thewii:vp_library/loaded_chunk/uninstall
execute if score #dependencies vp_temp matches ..0 run data remove storage thewii:vp_library/data modules.loaded_chunk

execute unless data storage thewii:vp_library/data modules run function thewii:vp_library/core/uninstall