# #var0, #var1
# var0-1: int，xz
# #var0
# var0

# params: #var0, #var1
# var0-1: int value, x and z position
# return values: #var0, #var1
# var0-7: int value, x and z position offset

function thewii:vp_library/raycasting/mrcd/calculate/hashcode
execute store result score #var_ofs_hc twvp.temp run scoreboard players get #var0 twvp.temp

# ((hashcode & 0xF)*1000/15-500)/2
scoreboard players operation #var0 twvp.temp %= #16 twvp.math
scoreboard players operation #var0 twvp.temp *= #1000 twvp.math
scoreboard players operation #var0 twvp.temp /= #15 twvp.math
scoreboard players remove #var0 twvp.temp 500
scoreboard players operation #var0 twvp.temp /= #2 twvp.math

# ((hashcode>>8 & 0xF)*1000/15-500)/2
execute store result score #var1 twvp.temp run scoreboard players get #var_ofs_hc twvp.temp
scoreboard players operation #var1 twvp.temp /= #256 twvp.math
scoreboard players operation #var1 twvp.temp %= #16 twvp.math
scoreboard players operation #var1 twvp.temp *= #1000 twvp.math
scoreboard players operation #var1 twvp.temp /= #15 twvp.math
scoreboard players remove #var1 twvp.temp 500
scoreboard players operation #var1 twvp.temp /= #2 twvp.math