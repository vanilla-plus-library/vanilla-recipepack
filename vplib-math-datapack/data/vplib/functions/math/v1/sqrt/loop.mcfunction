# Compute test
scoreboard players operation #test vplib.temp = #output vplib.math
scoreboard players operation #test vplib.temp += #increment vplib.math
scoreboard players operation #test vplib.temp *= #test vplib.temp

# Compare value
execute if score #test vplib.temp <= #input vplib.math run scoreboard players operation #output vplib.math += #increment vplib.math

# Execute recursive function
scoreboard players operation #increment vplib.math /= #2 vplib.math
execute if score #increment vplib.math matches 1.. run function vplib:math/v1/sqrt/loop