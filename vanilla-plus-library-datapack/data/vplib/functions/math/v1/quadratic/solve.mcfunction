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
tellraw @s[tag=twvp.debug] [{"score":{"name":"#input_a","objective":"vpcr.temp"}},"x**2 + ",{"score":{"name":"#input_b","objective":"vpcr.temp"}},"x + ",{"score":{"name":"#input_c","objective":"vpcr.temp"}}," = 0"]
tellraw @s[tag=twvp.debug] [""]
tellraw @s[tag=twvp.debug] ["x = -(",{"score":{"name":"#input_b","objective":"vpcr.temp"}},") +- sqrt( (",{"score":{"name":"#input_b","objective":"vpcr.temp"}},")**2 -4 * ",{"score":{"name":"#input_a","objective":"vpcr.temp"}}," * ",{"score":{"name":"#input_c","objective":"vpcr.temp"}},") / 2 * ",{"score":{"name":"#input_a","objective":"vpcr.temp"}}]


# Resolve signal operation in x = -(b) ..
scoreboard players operation #minus_b vpcr.temp = #input_b vpcr.temp
scoreboard players operation #minus_b vpcr.temp *= #-1 vpcr.math

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"vpcr.temp"}}," +- sqrt( (",{"score":{"name":"#input_b","objective":"vpcr.temp"}},")**2 -4 * ",{"score":{"name":"#input_a","objective":"vpcr.temp"}}," * ",{"score":{"name":"#input_c","objective":"vpcr.temp"}},") / 2 * ",{"score":{"name":"#input_a","objective":"vpcr.temp"}}]


# Calculate discriminant (b ** 2 - 4 * a * c)
scoreboard players operation #discriminant vpcr.temp = #input_b vpcr.temp
scoreboard players operation #discriminant vpcr.temp *= #discriminant vpcr.temp

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"vpcr.temp"}}," +- sqrt( ",{"score":{"name":"#discriminant","objective":"vpcr.temp"}}," -4 * ",{"score":{"name":"#input_a","objective":"vpcr.temp"}}," * ",{"score":{"name":"#input_c","objective":"vpcr.temp"}},") / 2 * ",{"score":{"name":"#input_a","objective":"vpcr.temp"}}]

scoreboard players set #discriminant.4ac vpcr.temp -4
scoreboard players operation #discriminant.4ac vpcr.temp *= #input_a vpcr.temp
scoreboard players operation #discriminant.4ac vpcr.temp *= #input_c vpcr.temp

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"vpcr.temp"}}," +- sqrt( ",{"score":{"name":"#discriminant","objective":"vpcr.temp"}}," ",{"score":{"name":"#discriminant.4ac","objective":"vpcr.temp"}},") / 2 * ",{"score":{"name":"#input_a","objective":"vpcr.temp"}}]

scoreboard players operation #discriminant vpcr.temp += #discriminant.4ac vpcr.temp

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"vpcr.temp"}}," +- sqrt( ",{"score":{"name":"#discriminant","objective":"vpcr.temp"}},") / 2 * ",{"score":{"name":"#input_a","objective":"vpcr.temp"}}]


# Calculate sqrt of discriminant
scoreboard players set #scale_factor vpcr.temp 10

scoreboard players operation #input vpcr.temp = #discriminant vpcr.temp
scoreboard players operation #input vpcr.temp *= #10 vpcr.math

function thewii:vp_library/math/sqrt/start

scoreboard players operation #sqrt vpcr.temp = #output vpcr.temp

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"vpcr.temp"}}," +- ",{"score":{"name":"#sqrt","objective":"vpcr.temp"}}," / 2 * ",{"score":{"name":"#input_a","objective":"vpcr.temp"}}]


# Multiply the numbers in ... / 2 * a
scoreboard players set #divider vpcr.temp 2
scoreboard players operation #divider vpcr.temp *= #input_a vpcr.temp

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"vpcr.temp"}}," +- ",{"score":{"name":"#sqrt","objective":"vpcr.temp"}}," / ",{"score":{"name":"#divider","objective":"vpcr.temp"}}]

# Scale factor
scoreboard players operation #minus_b vpcr.temp *= #10 vpcr.math
scoreboard players operation #divider vpcr.temp *= #10 vpcr.math

tellraw @s[tag=twvp.debug] ["x = ",{"score":{"name":"#minus_b","objective":"vpcr.temp"}}," +- ",{"score":{"name":"#sqrt","objective":"vpcr.temp"}}," / ",{"score":{"name":"#divider","objective":"vpcr.temp"}}]

# Get first solution
scoreboard players operation #sol1 vpcr.temp = #minus_b vpcr.temp
scoreboard players operation #sol1 vpcr.temp -= #sqrt vpcr.temp
scoreboard players operation #sol1 vpcr.temp /= #divider vpcr.temp

# Get second solution
scoreboard players operation #sol2 vpcr.temp = #minus_b vpcr.temp
scoreboard players operation #sol2 vpcr.temp += #sqrt vpcr.temp
scoreboard players operation #sol2 vpcr.temp /= #divider vpcr.temp

tellraw @s[tag=twvp.debug] ["x' = ",{"score":{"name":"#sol1","objective":"vpcr.temp"}}]
tellraw @s[tag=twvp.debug] ["x'' = ",{"score":{"name":"#sol2","objective":"vpcr.temp"}}]

tellraw @s[tag=twvp.debug] ["-----------------------"]