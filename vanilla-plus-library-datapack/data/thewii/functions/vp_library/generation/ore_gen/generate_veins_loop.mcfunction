# Rng the X displacement
scoreboard players set #range twvp.math 16
function thewii:vp_library/math/lcg/simplified_rng
scoreboard players operation #ore_x twvp.temp = #result twvp.math

# Rng the Z displacement
scoreboard players set #range twvp.math 16
function thewii:vp_library/math/lcg/simplified_rng
scoreboard players operation #ore_z twvp.temp = #result twvp.math

# Rng the Y displacement
scoreboard players operation #range twvp.math = #maxY twvp.temp
scoreboard players operation #range twvp.math -= #minY twvp.temp
scoreboard players add #range twvp.math 1
function thewii:vp_library/math/lcg/simplified_rng
scoreboard players operation #ore_y twvp.temp = #result twvp.math
scoreboard players operation #ore_y twvp.temp += #minY twvp.temp

# Rng the Vein Size
scoreboard players operation #range twvp.math = #maxSize twvp.temp
scoreboard players operation #range twvp.math -= #minSize twvp.temp
scoreboard players add #range twvp.math 1
function thewii:vp_library/math/lcg/simplified_rng
scoreboard players operation #result twvp.math += #minSize twvp.temp
scoreboard players operation #vein_size twvp.temp = #result twvp.math

#tellraw @a ["- X: ",{"score":{"name":"#ore_x","objective":"twvp.temp"}}," Z: ",{"score":{"name":"#ore_z","objective":"twvp.temp"}}," Y: ",{"score":{"name":"#ore_y","objective":"twvp.temp"}}," SIZE: ",{"score":{"name":"#vein_size","objective":"twvp.temp"}}," ID: ",{"score":{"name":"#id","objective":"twvp.temp"}}]
# Displace X
function thewii:vp_library/generation/ore_gen/displace_x

# Loop until #veins = 0
scoreboard players remove #veins twvp.temp 1
execute if score #veins twvp.temp matches 1.. run function thewii:vp_library/generation/ore_gen/generate_veins_loop

