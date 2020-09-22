#> thewii:vp_library/core/install

scoreboard objectives add twvp.data dummy
scoreboard objectives add twvp.temp dummy
scoreboard objectives add twvp.id dummy

execute as @a store result score @s twvp.id run data get entity @s UUID[0]

function thewii:vp_library/core/get_versions
scoreboard players operation $1.15 twvp.data = $1.15 twvp.temp
scoreboard players operation $1.16 twvp.data = $1.16 twvp.temp

function thewii:vp_library/core/load_config