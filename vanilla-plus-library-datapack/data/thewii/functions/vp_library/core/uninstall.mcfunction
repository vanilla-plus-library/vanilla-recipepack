#> thewii:vp_library/core/uninstall

scoreboard objectives remove twvp.data
scoreboard objectives remove twvp.temp
scoreboard objectives remove twvp.uuid0
scoreboard objectives remove twvp.uuid1
scoreboard objectives remove twvp.uuid2
scoreboard objectives remove twvp.uuid3
scoreboard objectives remove twvp.id

team remove twvp.nocollision

advancement revoke @a only thewii:vp_library/core/first_join

data remove storage thewii:vp_library/data modules
data remove storage thewii:vp_library/data version

function thewii:vp_library/core/clear_storage