#> vplib:math/v1/color/hsv_to_rgb/start

# Variables
scoreboard players set #-1 vplib.math -1
scoreboard players set #6 vplib.math 6
scoreboard players set #36 vplib.math 36
scoreboard players set #255 vplib.math 255
scoreboard players set #256 vplib.math 256
scoreboard players set #360 vplib.math 360

# DEBUG Input
#tellraw @a[tag=vplib.debug] ["[Input] ","Scale factor: ",{"score":{"name": "#scale_factor","objective": "vplib.math"}}," | Hue: ",{"score":{"name": "#hsv.h","objective": "vplib.math"}}," | Sat: ",{"score":{"name": "#hsv.s","objective": "vplib.math"}}," | Val: ",{"score":{"name": "#hsv.v","objective": "vplib.math"}}]


# Set rgb values if saturation is 0
execute if score #hsv.s vplib.math matches 0 run function vplib:math/v1/color/hsv_to_rgb/desaturated

# Calculate if saturation isn't 0
execute unless score #hsv.s vplib.math matches 0 run function vplib:math/v1/color/hsv_to_rgb/calculate


# Convert RGB to byte format
scoreboard players operation #rgb.r vplib.math *= #255 vplib.math
scoreboard players operation #rgb.g vplib.math *= #255 vplib.math
scoreboard players operation #rgb.b vplib.math *= #255 vplib.math

scoreboard players operation #rgb.r vplib.math /= #scale_factor vplib.math
scoreboard players operation #rgb.g vplib.math /= #scale_factor vplib.math
scoreboard players operation #rgb.b vplib.math /= #scale_factor vplib.math

# RGB Integer
scoreboard players operation #rgb.int vplib.math = #rgb.r vplib.math
scoreboard players operation #rgb.int vplib.math *= #256 vplib.math
scoreboard players operation #rgb.int vplib.math += #rgb.g vplib.math
scoreboard players operation #rgb.int vplib.math *= #256 vplib.math
scoreboard players operation #rgb.int vplib.math += #rgb.b vplib.math

# DEBUG Converted RGB
#tellraw @a[tag=vplib.debug] ["[Output] ","Red: ",{"score":{"name": "#rgb.r","objective": "vplib.math"}}," | Green: ",{"score":{"name": "#rgb.g","objective": "vplib.math"}}," | Blue: ",{"score":{"name": "#rgb.b","objective": "vplib.math"}}," | Int: ",{"score":{"name": "#rgb.int","objective": "vplib.math"}}]