#> vplib:math/v1/color/hsv_to_rgb/convert_hue

scoreboard players operation #hsv.h vplib.math *= #scale_factor vplib.math

scoreboard players operation #max_degrees vplib.temp = #scale_factor vplib.math
scoreboard players operation #max_degrees vplib.temp /= #10 vplib.math
scoreboard players operation #max_degrees vplib.temp *= #36 vplib.math

scoreboard players operation #hsv.h vplib.math /= #max_degrees vplib.temp