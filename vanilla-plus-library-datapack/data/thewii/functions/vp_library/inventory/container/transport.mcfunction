function thewii:vp_library/inventory/container/draw

execute at @e[tag=twta.input,limit=1,sort=nearest] run function thewii:vp_library/inventory/container/insert

execute if score #inserted twvp.temp matches 1 run function thewii:vp_library/inventory/container/remove