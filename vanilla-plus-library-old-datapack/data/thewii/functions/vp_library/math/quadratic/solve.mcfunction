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
tellraw @s[tag=twvp.debug] [{"score":{"name":"#input_a","objective":"twvp.temp"}},"x**2 + ",{"score":{"name":"#input_b","objective":"twvp.temp"}},"x + ",{"score":{"name":"#input_c","objective":"twvp.temp"}}," = 0"]
tellraw @s[tag=twvp.debug] [""]
tellraw @s[tag=twvp.debug] ["x = -(",{"score":{"name":"#input_b","objective":"twvp.temp"}},") +- sqrt( (",{"score":{"name":"#input_b","objective":"twvp.temp"}},")**2 -4 * ",{"score":{"name":"#input_a","objective":"twvp.temp"}}," * ",{"score":{"name":"#input_c","objective":"twvp.temp"}},") / 2 * ",{"score":{"name":"#input_a","objective":"twvp.temp"}}]


# Resolve signal operation in x = -(b) ..
scoreboard players operation #minus_b twvp.temp = #input_b twvp.temp
scoreboard players operation #minus_b twvp.temp *= #-1 twvp.math

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"twvp.temp"}}," +- sqrt( (",{"score":{"name":"#input_b","objective":"twvp.temp"}},")**2 -4 * ",{"score":{"name":"#input_a","objective":"twvp.temp"}}," * ",{"score":{"name":"#input_c","objective":"twvp.temp"}},") / 2 * ",{"score":{"name":"#input_a","objective":"twvp.temp"}}]


# Calculate discriminant (b ** 2 - 4 * a * c)
scoreboard players operation #discriminant twvp.temp = #input_b twvp.temp
scoreboard players operation #discriminant twvp.temp *= #discriminant twvp.temp

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"twvp.temp"}}," +- sqrt( ",{"score":{"name":"#discriminant","objective":"twvp.temp"}}," -4 * ",{"score":{"name":"#input_a","objective":"twvp.temp"}}," * ",{"score":{"name":"#input_c","objective":"twvp.temp"}},") / 2 * ",{"score":{"name":"#input_a","objective":"twvp.temp"}}]

scoreboard players set #discriminant.4ac twvp.temp -4
scoreboard players operation #discriminant.4ac twvp.temp *= #input_a twvp.temp
scoreboard players operation #discriminant.4ac twvp.temp *= #input_c twvp.temp

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"twvp.temp"}}," +- sqrt( ",{"score":{"name":"#discriminant","objective":"twvp.temp"}}," ",{"score":{"name":"#discriminant.4ac","objective":"twvp.temp"}},") / 2 * ",{"score":{"name":"#input_a","objective":"twvp.temp"}}]

scoreboard players operation #discriminant twvp.temp += #discriminant.4ac twvp.temp

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"twvp.temp"}}," +- sqrt( ",{"score":{"name":"#discriminant","objective":"twvp.temp"}},") / 2 * ",{"score":{"name":"#input_a","objective":"twvp.temp"}}]


# Calculate sqrt of discriminant
scoreboard players set #scale_factor twvp.temp 10

scoreboard players operation #input twvp.temp = #discriminant twvp.temp
scoreboard players operation #input twvp.temp *= #10 twvp.math

function thewii:vp_library/math/sqrt/start

scoreboard players operation #sqrt twvp.temp = #output twvp.temp

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"twvp.temp"}}," +- ",{"score":{"name":"#sqrt","objective":"twvp.temp"}}," / 2 * ",{"score":{"name":"#input_a","objective":"twvp.temp"}}]


# Multiply the numbers in ... / 2 * a
scoreboard players set #divider twvp.temp 2
scoreboard players operation #divider twvp.temp *= #input_a twvp.temp

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"twvp.temp"}}," +- ",{"score":{"name":"#sqrt","objective":"twvp.temp"}}," / ",{"score":{"name":"#divider","objective":"twvp.temp"}}]

# Scale factor
scoreboard players operation #minus_b twvp.temp *= #10 twvp.math
scoreboard players operation #divider twvp.temp *= #10 twvp.math

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"twvp.temp"}}," +- ",{"score":{"name":"#sqrt","objective":"twvp.temp"}}," / ",{"score":{"name":"#divider","objective":"twvp.temp"}}]

# Get first solution
scoreboard players operation #sol1 twvp.temp = #minus_b twvp.temp
scoreboard players operation #sol1 twvp.temp -= #sqrt twvp.temp
scoreboard players operation #sol1 twvp.temp /= #divider twvp.temp

# Get second solution
scoreboard players operation #sol2 twvp.temp = #minus_b twvp.temp
scoreboard players operation #sol2 twvp.temp += #sqrt twvp.temp
scoreboard players operation #sol2 twvp.temp /= #divider twvp.temp

tellraw @s[tag=twvp.debug] ["x' = ",{"score":{"name":"#sol1","objective":"twvp.temp"}}]
tellraw @s[tag=twvp.debug] ["x'' = ",{"score":{"name":"#sol2","objective":"twvp.temp"}}]

tellraw @s[tag=twvp.debug] ["-----------------------"]