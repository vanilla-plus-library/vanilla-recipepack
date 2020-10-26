#> vplib:math/v1/color/hsv_to_rgb/calculate

# Scale factor
execute unless score #scale_factor vplib.math matches 10..100000 run scoreboard players set #scale_factor vplib.math 1000

# Convert Hue
execute if score #hsv.h_degrees vplib.math matches 1 run function vplib:math/v1/color/hsv_to_rgb/convert_hue
#tellraw @a[tag=vplib.debug] ["Converted hue: ",{"score":{"name": "#hsv.h","objective": "vplib.math"}}]

# H = 60
# S = 50
# V = 100
# SF = 100

# R = 50 (127)
# G = 70 (178)
# B = 100 (255)

# Get I(Range 0-5)
scoreboard players operation #i vplib.temp = #hsv.h vplib.math
scoreboard players operation #i vplib.temp *= #6 vplib.math
scoreboard players operation #i vplib.temp /= #scale_factor vplib.math
scoreboard players operation #i vplib.temp *= #scale_factor vplib.math
#tellraw @a[tag=vplib.debug] ["I: ",{"score":{"name": "#i","objective": "vplib.temp"}}]
# I = 300

# Get F 
scoreboard players operation #f vplib.temp = #hsv.h vplib.math 
scoreboard players operation #f vplib.temp *= #6 vplib.math
scoreboard players operation #f vplib.temp -= #i vplib.temp
#tellraw @a[tag=vplib.debug] ["F: ",{"score":{"name": "#f","objective": "vplib.temp"}}]
# 60

# Get P
scoreboard players operation #p vplib.temp = #scale_factor vplib.math
scoreboard players operation #p vplib.temp -= #hsv.s vplib.math
scoreboard players operation #p vplib.temp *= #hsv.v vplib.math
scoreboard players operation #p vplib.temp /= #scale_factor vplib.math
#tellraw @a[tag=vplib.debug] ["P: ",{"score":{"name": "#p","objective": "vplib.temp"}}]
# 50

# Get Q
scoreboard players operation #q vplib.temp = #hsv.s vplib.math
scoreboard players operation #q vplib.temp *= #-1 vplib.math
scoreboard players operation #q vplib.temp *= #f vplib.temp
scoreboard players operation #q vplib.temp /= #scale_factor vplib.math
scoreboard players operation #q vplib.temp += #scale_factor vplib.math
scoreboard players operation #q vplib.temp *= #hsv.v vplib.math
scoreboard players operation #q vplib.temp /= #scale_factor vplib.math
#tellraw @a[tag=vplib.debug] ["Q: ",{"score":{"name": "#q","objective": "vplib.temp"}}]
# 70

# Get T
scoreboard players operation #t vplib.temp = #scale_factor vplib.math
scoreboard players operation #t vplib.temp -= #f vplib.temp
scoreboard players operation #t vplib.temp *= #hsv.s vplib.math
scoreboard players operation #t vplib.temp /= #scale_factor vplib.math
scoreboard players operation #t vplib.temp *= #-1 vplib.math
scoreboard players operation #t vplib.temp += #scale_factor vplib.math
scoreboard players operation #t vplib.temp *= #hsv.v vplib.math
scoreboard players operation #t vplib.temp /= #scale_factor vplib.math
#tellraw @a[tag=vplib.debug] ["T: ",{"score":{"name": "#t","objective": "vplib.temp"}}]
# 80

# Switch cases
scoreboard players operation #i vplib.temp /= #scale_factor vplib.math

execute unless score #i vplib.temp matches 1..5 run scoreboard players operation #rgb.r vplib.math = #hsv.v vplib.math
execute unless score #i vplib.temp matches 1..5 run scoreboard players operation #rgb.g vplib.math = #t vplib.temp
execute unless score #i vplib.temp matches 1..5 run scoreboard players operation #rgb.b vplib.math = #p vplib.temp

execute if score #i vplib.temp matches 1 run scoreboard players operation #rgb.r vplib.math = #q vplib.temp
execute if score #i vplib.temp matches 1 run scoreboard players operation #rgb.g vplib.math = #hsv.v vplib.math
execute if score #i vplib.temp matches 1 run scoreboard players operation #rgb.b vplib.math = #p vplib.temp

execute if score #i vplib.temp matches 2 run scoreboard players operation #rgb.r vplib.math = #p vplib.temp
execute if score #i vplib.temp matches 2 run scoreboard players operation #rgb.g vplib.math = #hsv.v vplib.math
execute if score #i vplib.temp matches 2 run scoreboard players operation #rgb.b vplib.math = #t vplib.temp

execute if score #i vplib.temp matches 3 run scoreboard players operation #rgb.r vplib.math = #p vplib.temp
execute if score #i vplib.temp matches 3 run scoreboard players operation #rgb.g vplib.math = #q vplib.temp
execute if score #i vplib.temp matches 3 run scoreboard players operation #rgb.b vplib.math = #hsv.v vplib.math

execute if score #i vplib.temp matches 4 run scoreboard players operation #rgb.r vplib.math = #t vplib.temp
execute if score #i vplib.temp matches 4 run scoreboard players operation #rgb.g vplib.math = #p vplib.temp
execute if score #i vplib.temp matches 4 run scoreboard players operation #rgb.b vplib.math = #hsv.v vplib.math

execute if score #i vplib.temp matches 5 run scoreboard players operation #rgb.r vplib.math = #hsv.v vplib.math
execute if score #i vplib.temp matches 5 run scoreboard players operation #rgb.g vplib.math = #p vplib.temp
execute if score #i vplib.temp matches 5 run scoreboard players operation #rgb.b vplib.math = #q vplib.temp