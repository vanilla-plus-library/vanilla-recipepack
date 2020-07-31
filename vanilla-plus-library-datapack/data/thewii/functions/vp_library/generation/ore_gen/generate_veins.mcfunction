# Rng the amount of veins
scoreboard players operation #range twvp.math = #maxVeins twvp.temp
scoreboard players operation #range twvp.math -= #minVeins twvp.temp
scoreboard players add #range twvp.math 1
function thewii:vp_library/math/lcg/simplified_rng
scoreboard players operation #result twvp.math += #minVeins twvp.temp
scoreboard players operation #veins twvp.temp = #result twvp.math

# Start generating veins
#tellraw @a ["Generating ",{"score":{"name":"#veins","objective":"twvp.temp"}}," veins in this chunk:"]
execute if score #veins twvp.temp matches 1.. run function thewii:vp_library/generation/ore_gen/generate_veins_loop
