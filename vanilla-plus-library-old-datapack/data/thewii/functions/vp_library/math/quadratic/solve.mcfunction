# INPUT VALUES
# a = #input_a
# b = #input_b
# c = #input_c

# OUTPUT VALUES
# x'  = #sol1
# x'' = #sol2


# x = -b +- sqrt( b**2 - 4 * a * c) / 2 * a

tellraw @s[tag=twvp.debug] ["--- Quadratic Equations ---"]
tellraw @s[tag=twvp.debug] ["x = -b +- sqrt( b**2 -4 * a * c) / 2 * a"]
tellraw @s[tag=twvp.debug] [{"score":{"name":"#input_a","objective":"vplib.temp"}},"x**2 + ",{"score":{"name":"#input_b","objective":"vplib.temp"}},"x + ",{"score":{"name":"#input_c","objective":"vplib.temp"}}," = 0"]
tellraw @s[tag=twvp.debug] [""]
tellraw @s[tag=twvp.debug] ["x = -(",{"score":{"name":"#input_b","objective":"vplib.temp"}},") +- sqrt( (",{"score":{"name":"#input_b","objective":"vplib.temp"}},")**2 -4 * ",{"score":{"name":"#input_a","objective":"vplib.temp"}}," * ",{"score":{"name":"#input_c","objective":"vplib.temp"}},") / 2 * ",{"score":{"name":"#input_a","objective":"vplib.temp"}}]


# Resolve signal operation in x = -(b) ..
scoreboard players operation #minus_b vplib.temp = #input_b vplib.temp
scoreboard players operation #minus_b vplib.temp *= #-1 twvp.math

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"vplib.temp"}}," +- sqrt( (",{"score":{"name":"#input_b","objective":"vplib.temp"}},")**2 -4 * ",{"score":{"name":"#input_a","objective":"vplib.temp"}}," * ",{"score":{"name":"#input_c","objective":"vplib.temp"}},") / 2 * ",{"score":{"name":"#input_a","objective":"vplib.temp"}}]


# Calculate discriminant (b ** 2 - 4 * a * c)
scoreboard players operation #discriminant vplib.temp = #input_b vplib.temp
scoreboard players operation #discriminant vplib.temp *= #discriminant vplib.temp

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"vplib.temp"}}," +- sqrt( ",{"score":{"name":"#discriminant","objective":"vplib.temp"}}," -4 * ",{"score":{"name":"#input_a","objective":"vplib.temp"}}," * ",{"score":{"name":"#input_c","objective":"vplib.temp"}},") / 2 * ",{"score":{"name":"#input_a","objective":"vplib.temp"}}]

scoreboard players set #discriminant.4ac vplib.temp -4
scoreboard players operation #discriminant.4ac vplib.temp *= #input_a vplib.temp
scoreboard players operation #discriminant.4ac vplib.temp *= #input_c vplib.temp

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"vplib.temp"}}," +- sqrt( ",{"score":{"name":"#discriminant","objective":"vplib.temp"}}," ",{"score":{"name":"#discriminant.4ac","objective":"vplib.temp"}},") / 2 * ",{"score":{"name":"#input_a","objective":"vplib.temp"}}]

scoreboard players operation #discriminant vplib.temp += #discriminant.4ac vplib.temp

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"vplib.temp"}}," +- sqrt( ",{"score":{"name":"#discriminant","objective":"vplib.temp"}},") / 2 * ",{"score":{"name":"#input_a","objective":"vplib.temp"}}]


# Calculate sqrt of discriminant
scoreboard players set #scale_factor vplib.temp 10

scoreboard players operation #input vplib.temp = #discriminant vplib.temp
scoreboard players operation #input vplib.temp *= #10 twvp.math

function #vplib:math/api/quadratic/solve

scoreboard players operation #sqrt vplib.temp = #output vplib.temp

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"vplib.temp"}}," +- ",{"score":{"name":"#sqrt","objective":"vplib.temp"}}," / 2 * ",{"score":{"name":"#input_a","objective":"vplib.temp"}}]


# Multiply the numbers in ... / 2 * a
scoreboard players set #divider vplib.temp 2
scoreboard players operation #divider vplib.temp *= #input_a vplib.temp

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"vplib.temp"}}," +- ",{"score":{"name":"#sqrt","objective":"vplib.temp"}}," / ",{"score":{"name":"#divider","objective":"vplib.temp"}}]

# Scale factor
scoreboard players operation #minus_b vplib.temp *= #10 twvp.math
scoreboard players operation #divider vplib.temp *= #10 twvp.math

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"vplib.temp"}}," +- ",{"score":{"name":"#sqrt","objective":"vplib.temp"}}," / ",{"score":{"name":"#divider","objective":"vplib.temp"}}]

# Get first solution
scoreboard players operation #sol1 vplib.temp = #minus_b vplib.temp
scoreboard players operation #sol1 vplib.temp -= #sqrt vplib.temp
scoreboard players operation #sol1 vplib.temp /= #divider vplib.temp

# Get second solution
scoreboard players operation #sol2 vplib.temp = #minus_b vplib.temp
scoreboard players operation #sol2 vplib.temp += #sqrt vplib.temp
scoreboard players operation #sol2 vplib.temp /= #divider vplib.temp

tellraw @s[tag=twvp.debug] ["x' = ",{"score":{"name":"#sol1","objective":"vplib.temp"}}]
tellraw @s[tag=twvp.debug] ["x'' = ",{"score":{"name":"#sol2","objective":"vplib.temp"}}]

tellraw @s[tag=twvp.debug] ["-----------------------"]