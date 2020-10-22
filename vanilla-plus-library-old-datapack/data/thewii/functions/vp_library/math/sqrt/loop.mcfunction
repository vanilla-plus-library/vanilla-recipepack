# Compute test
scoreboard players operation #test vplib.temp = #output vplib.math
scoreboard players operation #test vplib.temp += #32768 vplib.math
scoreboard players operation #test vplib.temp *= #test vplib.temp

# Compare value
execute if score #test vplib.temp <= #input vplib.math run scoreboard players operation #output vplib.math += #32768 vplib.math

# Execute recursive function
scoreboard players operation #32768 vplib.math /= #2 vplib.math
execute if score #32768 vplib.math matches 1.. run function thewii:vp_library/math/sqrt/loop