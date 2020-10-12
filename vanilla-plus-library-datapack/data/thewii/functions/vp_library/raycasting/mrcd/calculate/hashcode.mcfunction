# #var0, #var1
# var0-1: int，xz
# #var0
# var0

# params: #var0, #var1
# var0-1: int value, x and z position
# return values: #var0
# var0: hashcode

execute store result score #var_hc_x twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_hc_z twvp.temp run scoreboard players get #var1 twvp.temp

# x = x*3129871
scoreboard players operation #var0 twvp.temp *= #3129871 twvp.math

# z = z*116129781
scoreboard players operation #var1 twvp.temp *= #116129781 twvp.math

# t = x^z
function thewii:vp_library/raycasting/mrcd/calculate/xor
execute store result score #var_hc_t twvp.temp run scoreboard players get #var0 twvp.temp

# n = t*t*42317861
scoreboard players operation #var0 twvp.temp *= #var0 twvp.temp
scoreboard players operation #var0 twvp.temp *= #42317861 twvp.math

# t = t*11
scoreboard players operation #var_hc_t twvp.temp *= #11 twvp.math

# r = n+t
scoreboard players operation #var0 twvp.temp += #var_hc_t twvp.temp

# r = r>>16
scoreboard players operation #var0 twvp.temp /= #65536 twvp.math
