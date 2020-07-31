# Reset data
data remove storage thewii:vp_library/temp structList
data remove storage thewii:vp_library/temp struct
scoreboard players set #weight_sum twvp.temp 0

# Get dimensional structures
execute if score #gen_dim twvp.temp matches -1 run data modify storage thewii:vp_library/temp dimStructs set from storage thewii:vp_library/data worldGen.theNether.structures
execute if score #gen_dim twvp.temp matches 0 run data modify storage thewii:vp_library/temp dimStructs set from storage thewii:vp_library/data worldGen.overworld.structures
execute if score #gen_dim twvp.temp matches 1 run data modify storage thewii:vp_library/temp dimStructs set from storage thewii:vp_library/data worldGen.theEnd.structures

# Get generated size
execute if score #struct_size twvp.temp matches 1 run data modify storage thewii:vp_library/temp structList set from storage thewii:vp_library/temp dimStructs.small
execute if score #struct_size twvp.temp matches 2 run data modify storage thewii:vp_library/temp structList set from storage thewii:vp_library/temp dimStructs.medium
execute if score #struct_size twvp.temp matches 3 run data modify storage thewii:vp_library/temp structList set from storage thewii:vp_library/temp dimStructs.big

# Get sum of all weights
data modify storage thewii:vp_library/temp array set from storage thewii:vp_library/temp structList
function thewii:vp_library/generation/struct_gen/weight_sum

# Rng
scoreboard players operation #range vp_math = #weight_sum twvp.temp
scoreboard players add #range vp_math 1
function thewii:vp_library/math/lcg/simplified_rng
execute if score #result vp_math matches 0 run scoreboard players add #result vp_math 1

# Get weightened item
data modify storage thewii:vp_library/temp array set from storage thewii:vp_library/temp structList
function thewii:vp_library/generation/struct_gen/items_array
data modify storage thewii:vp_library/temp struct set from storage thewii:vp_library/temp array[0]

execute if data storage thewii:vp_library/temp struct run function thewii:vp_library/generation/struct_gen/generate_displacement
execute unless data storage thewii:vp_library/temp struct if score #struct_size twvp.temp matches 1 run say Failed to generate. There are no small structures in the array.
execute unless data storage thewii:vp_library/temp struct if score #struct_size twvp.temp matches 2 run say Failed to generate. There are no medium structures in the array.
execute unless data storage thewii:vp_library/temp struct if score #struct_size twvp.temp matches 3 run say Failed to generate. There are no big structures in the array.