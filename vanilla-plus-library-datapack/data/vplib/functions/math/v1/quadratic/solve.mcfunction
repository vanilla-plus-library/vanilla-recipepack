#> vplib:math/v1/quadratic/solve

# INPUT VALUES
# a = #input.a
# b = #input.b
# c = #input.c

# OUTPUT VALUES
# x'  = #sol1
# x'' = #sol2


# x = -b +- sqrt( b**2 - 4 * a * c) / 2 * a

# Resolve signal operation in x = -(b) ..
scoreboard players operation #minus_b vplib.temp = #input.b vplib.temp
scoreboard players operation #minus_b vplib.temp *= #-1 vplib.math

# Calculate discriminant (b ** 2 - 4 * a * c)
scoreboard players operation #discriminant vplib.temp = #input.b vplib.temp
scoreboard players operation #discriminant vplib.temp *= #discriminant vplib.temp

scoreboard players set #discriminant.4ac vplib.temp -4
scoreboard players operation #discriminant.4ac vplib.temp *= #input.a vplib.temp
scoreboard players operation #discriminant.4ac vplib.temp *= #input.c vplib.temp

scoreboard players operation #discriminant vplib.temp += #discriminant.4ac vplib.temp

# Calculate sqrt of discriminant
scoreboard players set #scale_factor vplib.temp 10

scoreboard players operation #input vplib.math = #discriminant vplib.temp
scoreboard players operation #input vplib.math *= #10 vplib.math

function thewii:vp_library/math/sqrt/start

scoreboard players operation #sqrt vplib.temp = #output vplib.temp

# Multiply the numbers in ... / 2 * a
scoreboard players set #divider vplib.temp 2
scoreboard players operation #divider vplib.temp *= #input.a vplib.temp

# Scale factor
scoreboard players operation #minus_b vplib.temp *= #10 vplib.math
scoreboard players operation #divider vplib.temp *= #10 vplib.math

# Get first solution
scoreboard players operation #sol1 vplib.math = #minus_b vplib.temp
scoreboard players operation #sol1 vplib.math -= #sqrt vplib.temp
scoreboard players operation #sol1 vplib.math /= #divider vplib.temp

# Get second solution
scoreboard players operation #sol2 vplib.math = #minus_b vplib.temp
scoreboard players operation #sol2 vplib.math += #sqrt vplib.temp
scoreboard players operation #sol2 vplib.math /= #divider vplib.temp