# Compute test
scoreboard players operation #test vpcr.temp = #output vpcr.math
scoreboard players operation #test vpcr.temp += #increment vpcr.math
scoreboard players operation #test vpcr.temp *= #test vpcr.temp

# Compare value
execute if score #test vpcr.temp <= #input vpcr.math run scoreboard players operation #output vpcr.math += #increment vpcr.math

# Execute recursive function
scoreboard players operation #increment vpcr.math /= #2 vpcr.math
execute if score #increment vpcr.math matches 1.. run function vplib:math/v1/sqrt/loop