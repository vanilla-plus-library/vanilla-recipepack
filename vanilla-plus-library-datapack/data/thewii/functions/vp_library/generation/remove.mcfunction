scoreboard players set #dependencies vp_temp 0
execute store result score #dependencies vp_temp run data get storage thewii:vp_library/data modules.generation

execute if score #dependencies vp_temp matches ..0 run scoreboard players set #dependencies vp_temp 1
execute store result storage thewii:vp_library/data modules.generation int 1 run scoreboard players remove #dependencies vp_temp 1
execute store result score #dependencies vp_temp run scoreboard players get #dependencies vp_temp

execute if score #dependencies vp_temp matches ..0 run function thewii:vp_library/generation/uninstall
execute if score #dependencies vp_temp matches ..0 run data remove storage thewii:vp_library/data modules.generation

execute unless data storage thewii:vp_library/data modules run function thewii:vp_library/core/uninstall