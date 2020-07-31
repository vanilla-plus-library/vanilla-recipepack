# Rng the X displacement
scoreboard players set #range vp_math 16
function thewii:vp_library/math/lcg/simplified_rng
scoreboard players operation #ore_x vp_temp = #result vp_math

# Rng the Z displacement
scoreboard players set #range vp_math 16
function thewii:vp_library/math/lcg/simplified_rng
scoreboard players operation #ore_z vp_temp = #result vp_math

# Rng the Y displacement
scoreboard players operation #range vp_math = #maxY vp_temp
scoreboard players operation #range vp_math -= #minY vp_temp
scoreboard players add #range vp_math 1
function thewii:vp_library/math/lcg/simplified_rng
scoreboard players operation #ore_y vp_temp = #result vp_math
scoreboard players operation #ore_y vp_temp += #minY vp_temp

# Rng the Vein Size
scoreboard players operation #range vp_math = #maxSize vp_temp
scoreboard players operation #range vp_math -= #minSize vp_temp
scoreboard players add #range vp_math 1
function thewii:vp_library/math/lcg/simplified_rng
scoreboard players operation #result vp_math += #minSize vp_temp
scoreboard players operation #vein_size vp_temp = #result vp_math

#tellraw @a ["- X: ",{"score":{"name":"#ore_x","objective":"vp_temp"}}," Z: ",{"score":{"name":"#ore_z","objective":"vp_temp"}}," Y: ",{"score":{"name":"#ore_y","objective":"vp_temp"}}," SIZE: ",{"score":{"name":"#vein_size","objective":"vp_temp"}}," ID: ",{"score":{"name":"#id","objective":"vp_temp"}}]
# Displace X
function thewii:vp_library/generation/ore_gen/displace_x

# Loop until #veins = 0
scoreboard players remove #veins vp_temp 1
execute if score #veins vp_temp matches 1.. run function thewii:vp_library/generation/ore_gen/generate_veins_loop

