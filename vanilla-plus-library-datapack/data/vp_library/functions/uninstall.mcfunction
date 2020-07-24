
# Forceload chunk
execute unless data storage vp_library:data {Installed:0b} run function vp_library:loaded_chunk/remove

data remove storage vp_library:data Version

scoreboard players set $installed vp_data 0
scoreboard players reset $vplib.ver load

data merge storage vp_library:data {FirstReload:1b,Installed:0b}