#> thewii:vp_library/core/install

scoreboard objectives add twvp.data dummy
scoreboard objectives add twvp.temp dummy
scoreboard objectives add twvp.uuid0 dummy
scoreboard objectives add twvp.uuid1 dummy
scoreboard objectives add twvp.uuid2 dummy
scoreboard objectives add twvp.uuid3 dummy
scoreboard objectives add twvp.id dummy

execute as @a run function thewii:vp_library/core/player_joined

team add twvp.nocollision "twvp.nocollide"
team modify twvp.nocollision collisionRule never

function thewii:vp_library/core/get_versions
scoreboard players operation $1.15 twvp.data = $1.15 twvp.temp
scoreboard players operation $1.16 twvp.data = $1.16 twvp.temp

function thewii:vp_library/core/load_config