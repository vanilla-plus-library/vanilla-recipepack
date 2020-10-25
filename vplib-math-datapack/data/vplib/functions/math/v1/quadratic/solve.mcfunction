#> vplib:math/v1/quadratic/solve

# Calculate discriminant

## b ** 2
scoreboard players operation #discriminant vplib.temp = #input.b vplib.math
scoreboard players operation #discriminant vplib.temp *= #discriminant vplib.temp

## -4 * a * c
scoreboard players set #discriminant_2 vplib.temp -4
scoreboard players operation #discriminant_2 vplib.temp *= #input.a vplib.math
scoreboard players operation #discriminant_2 vplib.temp *= #input.c vplib.math

scoreboard players operation #discriminant vplib.temp += #discriminant_2 vplib.temp


# Calculate square root
scoreboard players set #scale_factor vplib.math 10

scoreboard players operation #input vplib.math = #discriminant vplib.temp
scoreboard players operation #input vplib.math *= #scale_factor vplib.math

function vplib:math/v1/sqrt/solve

scoreboard players operation #sqrt vplib.temp = #output vplib.temp


# Invert b signal
scoreboard players operation #minus_b vplib.temp = #input.b vplib.math
scoreboard players operation #minus_b vplib.temp *= #-1 vplib.math

# Calculate divider
scoreboard players set #divider vplib.temp 2
scoreboard players operation #divider vplib.temp *= #input.a vplib.math


# Scale factor
scoreboard players operation #minus_b vplib.temp *= #scale_factor vplib.math
scoreboard players operation #divider vplib.temp *= #scale_factor vplib.math


# Get first solution
scoreboard players operation #sol1 vplib.math = #minus_b vplib.temp
scoreboard players operation #sol1 vplib.math -= #sqrt vplib.temp
scoreboard players operation #sol1 vplib.math /= #divider vplib.temp

# Get second solution
scoreboard players operation #sol2 vplib.math = #minus_b vplib.temp
scoreboard players operation #sol2 vplib.math += #sqrt vplib.temp
scoreboard players operation #sol2 vplib.math /= #divider vplib.temp