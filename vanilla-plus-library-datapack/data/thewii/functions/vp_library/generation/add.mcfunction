scoreboard players set #dependencies vp_temp 0
execute store result score #dependencies vp_temp run data get storage thewii:vp_library/data modules.generation

execute if score #dependencies vp_temp matches ..0 run function thewii:vp_library/generation/install

execute if score #dependencies vp_temp matches ..-1 run scoreboard players set #dependencies vp_temp 0
execute store result storage thewii:vp_library/data modules.generation int 1 run scoreboard players add #dependencies vp_temp 1