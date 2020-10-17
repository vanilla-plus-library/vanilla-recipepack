# #var0, #var1
# var0-1: 0-65535
# #var0
# var0: 0-65535

# params: #var0, #var1
# var0-1: number range from 0-65535
# return values: #var0
# var0: number range from 0-65535

# save sign bit
scoreboard players set #var_xor_sign0 twvp.temp 0
scoreboard players set #var_xor_sign1 twvp.temp 0
execute if score #var0 twvp.temp matches -2147483648..-1 run scoreboard players set #var_xor_sign0 twvp.temp 1
execute if score #var1 twvp.temp matches -2147483648..-1 run scoreboard players set #var_xor_sign1 twvp.temp 1

# convert to complement
execute if score #var_xor_sign0 twvp.temp matches 1 run scoreboard players set #var_xor_t0 twvp.temp 2147483647
execute if score #var_xor_sign0 twvp.temp matches 1 run scoreboard players operation #var_xor_t0 twvp.temp += #var0 twvp.temp
execute if score #var_xor_sign0 twvp.temp matches 1 run scoreboard players add #var_xor_t0 twvp.temp 1
execute if score #var_xor_sign0 twvp.temp matches 1 run scoreboard players operation #var0 twvp.temp = #var_xor_t0 twvp.temp
execute if score #var_xor_sign1 twvp.temp matches 1 run scoreboard players set #var_xor_t1 twvp.temp 2147483647
execute if score #var_xor_sign1 twvp.temp matches 1 run scoreboard players operation #var_xor_t1 twvp.temp += #var1 twvp.temp
execute if score #var_xor_sign1 twvp.temp matches 1 run scoreboard players add #var_xor_t1 twvp.temp 1
execute if score #var_xor_sign1 twvp.temp matches 1 run scoreboard players operation #var1 twvp.temp = #var_xor_t1 twvp.temp


# convert to binary
execute store result score #var_xor_t0_0 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_1 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_2 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_3 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_4 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_5 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_6 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_7 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_8 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_9 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_10 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_11 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_12 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_13 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_14 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_15 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_16 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_17 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_18 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_19 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_20 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_21 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_22 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_23 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_24 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_25 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_26 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_27 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_28 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_29 twvp.temp run scoreboard players get #var0 twvp.temp
execute store result score #var_xor_t0_30 twvp.temp run scoreboard players get #var0 twvp.temp
scoreboard players operation #var_xor_t0_1 twvp.temp /= #2 twvp.math
scoreboard players operation #var_xor_t0_2 twvp.temp /= #4 twvp.math
scoreboard players operation #var_xor_t0_3 twvp.temp /= #8 twvp.math
scoreboard players operation #var_xor_t0_4 twvp.temp /= #16 twvp.math
scoreboard players operation #var_xor_t0_5 twvp.temp /= #32 twvp.math
scoreboard players operation #var_xor_t0_6 twvp.temp /= #64 twvp.math
scoreboard players operation #var_xor_t0_7 twvp.temp /= #128 twvp.math
scoreboard players operation #var_xor_t0_8 twvp.temp /= #256 twvp.math
scoreboard players operation #var_xor_t0_9 twvp.temp /= #512 twvp.math
scoreboard players operation #var_xor_t0_10 twvp.temp /= #1024 twvp.math
scoreboard players operation #var_xor_t0_11 twvp.temp /= #2048 twvp.math
scoreboard players operation #var_xor_t0_12 twvp.temp /= #4096 twvp.math
scoreboard players operation #var_xor_t0_13 twvp.temp /= #8192 twvp.math
scoreboard players operation #var_xor_t0_14 twvp.temp /= #16384 twvp.math
scoreboard players operation #var_xor_t0_15 twvp.temp /= #32768 twvp.math
scoreboard players operation #var_xor_t0_16 twvp.temp /= #65536 twvp.math
scoreboard players operation #var_xor_t0_17 twvp.temp /= #131072 twvp.math
scoreboard players operation #var_xor_t0_18 twvp.temp /= #262144 twvp.math
scoreboard players operation #var_xor_t0_19 twvp.temp /= #524288 twvp.math
scoreboard players operation #var_xor_t0_20 twvp.temp /= #1048576 twvp.math
scoreboard players operation #var_xor_t0_21 twvp.temp /= #2097152 twvp.math
scoreboard players operation #var_xor_t0_22 twvp.temp /= #4194304 twvp.math
scoreboard players operation #var_xor_t0_23 twvp.temp /= #8388608 twvp.math
scoreboard players operation #var_xor_t0_24 twvp.temp /= #16777216 twvp.math
scoreboard players operation #var_xor_t0_25 twvp.temp /= #33554432 twvp.math
scoreboard players operation #var_xor_t0_26 twvp.temp /= #67108864 twvp.math
scoreboard players operation #var_xor_t0_27 twvp.temp /= #134217728 twvp.math
scoreboard players operation #var_xor_t0_28 twvp.temp /= #268435456 twvp.math
scoreboard players operation #var_xor_t0_29 twvp.temp /= #536870912 twvp.math
scoreboard players operation #var_xor_t0_30 twvp.temp /= #1073741824 twvp.math
scoreboard players operation #var_xor_t0_0 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_1 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_2 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_3 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_4 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_5 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_6 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_7 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_8 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_9 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_10 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_11 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_12 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_13 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_14 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_15 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_16 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_17 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_18 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_19 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_20 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_21 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_22 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_23 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_24 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_25 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_26 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_27 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_28 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_29 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t0_30 twvp.temp %= #2 twvp.math
execute store result score #var_xor_t0_31 twvp.temp run scoreboard players get #var_xor_sign0 twvp.temp

execute store result score #var_xor_t1_0 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_1 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_2 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_3 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_4 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_5 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_6 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_7 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_8 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_9 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_10 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_11 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_12 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_13 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_14 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_15 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_16 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_17 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_18 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_19 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_20 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_21 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_22 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_23 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_24 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_25 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_26 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_27 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_28 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_29 twvp.temp run scoreboard players get #var1 twvp.temp
execute store result score #var_xor_t1_30 twvp.temp run scoreboard players get #var1 twvp.temp
scoreboard players operation #var_xor_t1_1 twvp.temp /= #2 twvp.math
scoreboard players operation #var_xor_t1_2 twvp.temp /= #4 twvp.math
scoreboard players operation #var_xor_t1_3 twvp.temp /= #8 twvp.math
scoreboard players operation #var_xor_t1_4 twvp.temp /= #16 twvp.math
scoreboard players operation #var_xor_t1_5 twvp.temp /= #32 twvp.math
scoreboard players operation #var_xor_t1_6 twvp.temp /= #64 twvp.math
scoreboard players operation #var_xor_t1_7 twvp.temp /= #128 twvp.math
scoreboard players operation #var_xor_t1_8 twvp.temp /= #256 twvp.math
scoreboard players operation #var_xor_t1_9 twvp.temp /= #512 twvp.math
scoreboard players operation #var_xor_t1_10 twvp.temp /= #1024 twvp.math
scoreboard players operation #var_xor_t1_11 twvp.temp /= #2048 twvp.math
scoreboard players operation #var_xor_t1_12 twvp.temp /= #4096 twvp.math
scoreboard players operation #var_xor_t1_13 twvp.temp /= #8192 twvp.math
scoreboard players operation #var_xor_t1_14 twvp.temp /= #16384 twvp.math
scoreboard players operation #var_xor_t1_15 twvp.temp /= #32768 twvp.math
scoreboard players operation #var_xor_t1_16 twvp.temp /= #65536 twvp.math
scoreboard players operation #var_xor_t1_17 twvp.temp /= #131072 twvp.math
scoreboard players operation #var_xor_t1_18 twvp.temp /= #262144 twvp.math
scoreboard players operation #var_xor_t1_19 twvp.temp /= #524288 twvp.math
scoreboard players operation #var_xor_t1_20 twvp.temp /= #1048576 twvp.math
scoreboard players operation #var_xor_t1_21 twvp.temp /= #2097152 twvp.math
scoreboard players operation #var_xor_t1_22 twvp.temp /= #4194304 twvp.math
scoreboard players operation #var_xor_t1_23 twvp.temp /= #8388608 twvp.math
scoreboard players operation #var_xor_t1_24 twvp.temp /= #16777216 twvp.math
scoreboard players operation #var_xor_t1_25 twvp.temp /= #33554432 twvp.math
scoreboard players operation #var_xor_t1_26 twvp.temp /= #67108864 twvp.math
scoreboard players operation #var_xor_t1_27 twvp.temp /= #134217728 twvp.math
scoreboard players operation #var_xor_t1_28 twvp.temp /= #268435456 twvp.math
scoreboard players operation #var_xor_t1_29 twvp.temp /= #536870912 twvp.math
scoreboard players operation #var_xor_t1_30 twvp.temp /= #1073741824 twvp.math
scoreboard players operation #var_xor_t1_0 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_1 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_2 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_3 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_4 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_5 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_6 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_7 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_8 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_9 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_10 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_11 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_12 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_13 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_14 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_15 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_16 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_17 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_18 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_19 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_20 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_21 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_22 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_23 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_24 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_25 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_26 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_27 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_28 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_29 twvp.temp %= #2 twvp.math
scoreboard players operation #var_xor_t1_30 twvp.temp %= #2 twvp.math
execute store result score #var_xor_t1_31 twvp.temp run scoreboard players get #var_xor_sign1 twvp.temp



#tellraw @a ["n0: ",{"score":{"name":"#var_xor_t0_31","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_30","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_29","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_28","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_27","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_26","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_25","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_24","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_23","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_22","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_21","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_20","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_19","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_18","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_17","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_16","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_15","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_14","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_13","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_12","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_11","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_10","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_9","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_8","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_7","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_6","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_5","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_4","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_3","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_2","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_1","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_0","objective":"twvp.temp"}}]
#tellraw @a ["n1: ",{"score":{"name":"#var_xor_t1_31","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_30","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_29","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_28","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_27","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_26","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_25","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_24","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_23","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_22","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_21","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_20","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_19","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_18","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_17","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_16","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_15","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_14","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_13","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_12","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_11","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_10","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_9","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_8","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_7","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_6","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_5","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_4","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_3","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_2","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_1","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t1_0","objective":"twvp.temp"}}]

# xor by bit
scoreboard players operation #var_xor_t0_0 twvp.temp += #var_xor_t1_0 twvp.temp
scoreboard players operation #var_xor_t0_1 twvp.temp += #var_xor_t1_1 twvp.temp
scoreboard players operation #var_xor_t0_2 twvp.temp += #var_xor_t1_2 twvp.temp
scoreboard players operation #var_xor_t0_3 twvp.temp += #var_xor_t1_3 twvp.temp
scoreboard players operation #var_xor_t0_4 twvp.temp += #var_xor_t1_4 twvp.temp
scoreboard players operation #var_xor_t0_5 twvp.temp += #var_xor_t1_5 twvp.temp
scoreboard players operation #var_xor_t0_6 twvp.temp += #var_xor_t1_6 twvp.temp
scoreboard players operation #var_xor_t0_7 twvp.temp += #var_xor_t1_7 twvp.temp
scoreboard players operation #var_xor_t0_8 twvp.temp += #var_xor_t1_8 twvp.temp
scoreboard players operation #var_xor_t0_9 twvp.temp += #var_xor_t1_9 twvp.temp
scoreboard players operation #var_xor_t0_10 twvp.temp += #var_xor_t1_10 twvp.temp
scoreboard players operation #var_xor_t0_11 twvp.temp += #var_xor_t1_11 twvp.temp
scoreboard players operation #var_xor_t0_12 twvp.temp += #var_xor_t1_12 twvp.temp
scoreboard players operation #var_xor_t0_13 twvp.temp += #var_xor_t1_13 twvp.temp
scoreboard players operation #var_xor_t0_14 twvp.temp += #var_xor_t1_14 twvp.temp
scoreboard players operation #var_xor_t0_15 twvp.temp += #var_xor_t1_15 twvp.temp
scoreboard players operation #var_xor_t0_16 twvp.temp += #var_xor_t1_16 twvp.temp
scoreboard players operation #var_xor_t0_17 twvp.temp += #var_xor_t1_17 twvp.temp
scoreboard players operation #var_xor_t0_18 twvp.temp += #var_xor_t1_18 twvp.temp
scoreboard players operation #var_xor_t0_19 twvp.temp += #var_xor_t1_19 twvp.temp
scoreboard players operation #var_xor_t0_20 twvp.temp += #var_xor_t1_20 twvp.temp
scoreboard players operation #var_xor_t0_21 twvp.temp += #var_xor_t1_21 twvp.temp
scoreboard players operation #var_xor_t0_22 twvp.temp += #var_xor_t1_22 twvp.temp
scoreboard players operation #var_xor_t0_23 twvp.temp += #var_xor_t1_23 twvp.temp
scoreboard players operation #var_xor_t0_24 twvp.temp += #var_xor_t1_24 twvp.temp
scoreboard players operation #var_xor_t0_25 twvp.temp += #var_xor_t1_25 twvp.temp
scoreboard players operation #var_xor_t0_26 twvp.temp += #var_xor_t1_26 twvp.temp
scoreboard players operation #var_xor_t0_27 twvp.temp += #var_xor_t1_27 twvp.temp
scoreboard players operation #var_xor_t0_28 twvp.temp += #var_xor_t1_28 twvp.temp
scoreboard players operation #var_xor_t0_29 twvp.temp += #var_xor_t1_29 twvp.temp
scoreboard players operation #var_xor_t0_30 twvp.temp += #var_xor_t1_30 twvp.temp
scoreboard players operation #var_xor_t0_31 twvp.temp += #var_xor_t1_31 twvp.temp
execute if score #var_xor_t0_0 twvp.temp matches 2 run scoreboard players set #var_xor_t0_0 twvp.temp 0
execute if score #var_xor_t0_1 twvp.temp matches 2 run scoreboard players set #var_xor_t0_1 twvp.temp 0
execute if score #var_xor_t0_2 twvp.temp matches 2 run scoreboard players set #var_xor_t0_2 twvp.temp 0
execute if score #var_xor_t0_3 twvp.temp matches 2 run scoreboard players set #var_xor_t0_3 twvp.temp 0
execute if score #var_xor_t0_4 twvp.temp matches 2 run scoreboard players set #var_xor_t0_4 twvp.temp 0
execute if score #var_xor_t0_5 twvp.temp matches 2 run scoreboard players set #var_xor_t0_5 twvp.temp 0
execute if score #var_xor_t0_6 twvp.temp matches 2 run scoreboard players set #var_xor_t0_6 twvp.temp 0
execute if score #var_xor_t0_7 twvp.temp matches 2 run scoreboard players set #var_xor_t0_7 twvp.temp 0
execute if score #var_xor_t0_8 twvp.temp matches 2 run scoreboard players set #var_xor_t0_8 twvp.temp 0
execute if score #var_xor_t0_9 twvp.temp matches 2 run scoreboard players set #var_xor_t0_9 twvp.temp 0
execute if score #var_xor_t0_10 twvp.temp matches 2 run scoreboard players set #var_xor_t0_10 twvp.temp 0
execute if score #var_xor_t0_11 twvp.temp matches 2 run scoreboard players set #var_xor_t0_11 twvp.temp 0
execute if score #var_xor_t0_12 twvp.temp matches 2 run scoreboard players set #var_xor_t0_12 twvp.temp 0
execute if score #var_xor_t0_13 twvp.temp matches 2 run scoreboard players set #var_xor_t0_13 twvp.temp 0
execute if score #var_xor_t0_14 twvp.temp matches 2 run scoreboard players set #var_xor_t0_14 twvp.temp 0
execute if score #var_xor_t0_15 twvp.temp matches 2 run scoreboard players set #var_xor_t0_15 twvp.temp 0
execute if score #var_xor_t0_16 twvp.temp matches 2 run scoreboard players set #var_xor_t0_16 twvp.temp 0
execute if score #var_xor_t0_17 twvp.temp matches 2 run scoreboard players set #var_xor_t0_17 twvp.temp 0
execute if score #var_xor_t0_18 twvp.temp matches 2 run scoreboard players set #var_xor_t0_18 twvp.temp 0
execute if score #var_xor_t0_19 twvp.temp matches 2 run scoreboard players set #var_xor_t0_19 twvp.temp 0
execute if score #var_xor_t0_20 twvp.temp matches 2 run scoreboard players set #var_xor_t0_20 twvp.temp 0
execute if score #var_xor_t0_21 twvp.temp matches 2 run scoreboard players set #var_xor_t0_21 twvp.temp 0
execute if score #var_xor_t0_22 twvp.temp matches 2 run scoreboard players set #var_xor_t0_22 twvp.temp 0
execute if score #var_xor_t0_23 twvp.temp matches 2 run scoreboard players set #var_xor_t0_23 twvp.temp 0
execute if score #var_xor_t0_24 twvp.temp matches 2 run scoreboard players set #var_xor_t0_24 twvp.temp 0
execute if score #var_xor_t0_25 twvp.temp matches 2 run scoreboard players set #var_xor_t0_25 twvp.temp 0
execute if score #var_xor_t0_26 twvp.temp matches 2 run scoreboard players set #var_xor_t0_26 twvp.temp 0
execute if score #var_xor_t0_27 twvp.temp matches 2 run scoreboard players set #var_xor_t0_27 twvp.temp 0
execute if score #var_xor_t0_28 twvp.temp matches 2 run scoreboard players set #var_xor_t0_28 twvp.temp 0
execute if score #var_xor_t0_29 twvp.temp matches 2 run scoreboard players set #var_xor_t0_29 twvp.temp 0
execute if score #var_xor_t0_30 twvp.temp matches 2 run scoreboard players set #var_xor_t0_30 twvp.temp 0
execute if score #var_xor_t0_31 twvp.temp matches 2 run scoreboard players set #var_xor_t0_31 twvp.temp 0

#tellraw @a ["n2: ",{"score":{"name":"#var_xor_t0_31","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_30","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_29","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_28","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_27","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_26","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_25","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_24","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_23","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_22","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_21","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_20","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_19","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_18","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_17","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_16","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_15","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_14","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_13","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_12","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_11","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_10","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_9","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_8","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_7","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_6","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_5","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_4","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_3","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_2","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_1","objective":"twvp.temp"}},{"score":{"name":"#var_xor_t0_0","objective":"twvp.temp"}}]





# convert to demical
scoreboard players operation #var_xor_t0_1 twvp.temp *= #2 twvp.math
scoreboard players operation #var_xor_t0_2 twvp.temp *= #4 twvp.math
scoreboard players operation #var_xor_t0_3 twvp.temp *= #8 twvp.math
scoreboard players operation #var_xor_t0_4 twvp.temp *= #16 twvp.math
scoreboard players operation #var_xor_t0_5 twvp.temp *= #32 twvp.math
scoreboard players operation #var_xor_t0_6 twvp.temp *= #64 twvp.math
scoreboard players operation #var_xor_t0_7 twvp.temp *= #128 twvp.math
scoreboard players operation #var_xor_t0_8 twvp.temp *= #256 twvp.math
scoreboard players operation #var_xor_t0_9 twvp.temp *= #512 twvp.math
scoreboard players operation #var_xor_t0_10 twvp.temp *= #1024 twvp.math
scoreboard players operation #var_xor_t0_11 twvp.temp *= #2048 twvp.math
scoreboard players operation #var_xor_t0_12 twvp.temp *= #4096 twvp.math
scoreboard players operation #var_xor_t0_13 twvp.temp *= #8192 twvp.math
scoreboard players operation #var_xor_t0_14 twvp.temp *= #16384 twvp.math
scoreboard players operation #var_xor_t0_15 twvp.temp *= #32768 twvp.math
scoreboard players operation #var_xor_t0_16 twvp.temp *= #65536 twvp.math
scoreboard players operation #var_xor_t0_17 twvp.temp *= #131072 twvp.math
scoreboard players operation #var_xor_t0_18 twvp.temp *= #262144 twvp.math
scoreboard players operation #var_xor_t0_19 twvp.temp *= #524288 twvp.math
scoreboard players operation #var_xor_t0_20 twvp.temp *= #1048576 twvp.math
scoreboard players operation #var_xor_t0_21 twvp.temp *= #2097152 twvp.math
scoreboard players operation #var_xor_t0_22 twvp.temp *= #4194304 twvp.math
scoreboard players operation #var_xor_t0_23 twvp.temp *= #8388608 twvp.math
scoreboard players operation #var_xor_t0_24 twvp.temp *= #16777216 twvp.math
scoreboard players operation #var_xor_t0_25 twvp.temp *= #33554432 twvp.math
scoreboard players operation #var_xor_t0_26 twvp.temp *= #67108864 twvp.math
scoreboard players operation #var_xor_t0_27 twvp.temp *= #134217728 twvp.math
scoreboard players operation #var_xor_t0_28 twvp.temp *= #268435456 twvp.math
scoreboard players operation #var_xor_t0_29 twvp.temp *= #536870912 twvp.math
scoreboard players operation #var_xor_t0_30 twvp.temp *= #1073741824 twvp.math
scoreboard players set #var0 twvp.temp 0
scoreboard players operation #var0 twvp.temp += #var_xor_t0_0 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_1 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_2 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_3 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_4 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_5 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_6 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_7 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_8 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_9 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_10 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_11 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_12 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_13 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_14 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_15 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_16 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_17 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_18 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_19 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_20 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_21 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_22 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_23 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_24 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_25 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_26 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_27 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_28 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_29 twvp.temp
scoreboard players operation #var0 twvp.temp += #var_xor_t0_30 twvp.temp

execute if score #var_xor_t0_31 twvp.temp matches 1 run scoreboard players add #var0 twvp.temp 2147483647
execute if score #var_xor_t0_31 twvp.temp matches 1 run scoreboard players add #var0 twvp.temp 1

#tellraw @a ["r: ",{"score":{"name":"#var0","objective":"twvp.temp"}}]
