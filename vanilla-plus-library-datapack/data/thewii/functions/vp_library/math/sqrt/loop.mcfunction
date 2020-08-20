# Compute test
scoreboard players operation #test twvp.temp = #output twvp.temp
scoreboard players operation #test twvp.temp += #increment twvp.temp
scoreboard players operation #test twvp.temp *= #test twvp.temp

# Compare value
execute if score #test twvp.temp <= #input twvp.temp run scoreboard players operation #output twvp.temp += #increment twvp.temp

# Execute recursive function
scoreboard players operation #increment twvp.temp /= #2 twvp.math
execute if score #increment twvp.temp matches 1.. run function thewii:vp_library/math/sqrt/loop