#> thewii:vp_library/custom_crafting/internal/add

# Install core module
execute unless data storage thewii:vp_library/data modules run function thewii:vp_library/core/install

scoreboard players set #dependencies twvp.temp 0
execute store result score #dependencies twvp.temp run data get storage thewii:vp_library/data modules.custom_crafting

execute if score #dependencies twvp.temp matches ..0 run function thewii:vp_library/custom_crafting/internal/install

execute if score #dependencies twvp.temp matches ..-1 run scoreboard players set #dependencies twvp.temp 0
execute store result storage thewii:vp_library/data modules.custom_crafting int 1 run scoreboard players add #dependencies twvp.temp 1