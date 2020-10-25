#> vplib:math/v1/power/loop

# Multiply
execute if score #exponent vplib.math matches 1.. run scoreboard players operation #output vplib.math *= #input vplib.math
execute if score #exponent vplib.math matches ..-1 run scoreboard players operation #output vplib.math /= #input vplib.math

# Loop
scoreboard players remove #loop vplib.temp 1
execute if score #loop vplib.temp matches 1.. run function vplib:math/v1/power/loop