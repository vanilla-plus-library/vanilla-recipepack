# Rng the amount of veins
scoreboard players operation #range vp_math = #maxVeins vp_temp
scoreboard players operation #range vp_math -= #minVeins vp_temp
scoreboard players add #range vp_math 1
function thewii:vp_library/math/lcg/simplified_rng
scoreboard players operation #result vp_math += #minVeins vp_temp
scoreboard players operation #veins vp_temp = #result vp_math

# Start generating veins
#tellraw @a ["Generating ",{"score":{"name":"#veins","objective":"vp_temp"}}," veins in this chunk:"]
execute if score #veins vp_temp matches 1.. run function thewii:vp_library/generation/ore_gen/generate_veins_loop
