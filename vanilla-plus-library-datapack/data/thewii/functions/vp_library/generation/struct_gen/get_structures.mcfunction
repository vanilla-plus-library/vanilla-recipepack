# Reset data
data remove storage thewii:vp_library/temp StructList
data remove storage thewii:vp_library/temp Struct
scoreboard players set #weight_sum vp_temp 0

# Get dimensional structures
execute if score #gen_dim vp_temp matches -1 run data modify storage thewii:vp_library/temp DimStructs set from storage thewii:vp_library/data WorldGen.TheNether.Structures
execute if score #gen_dim vp_temp matches 0 run data modify storage thewii:vp_library/temp DimStructs set from storage thewii:vp_library/data WorldGen.Overworld.Structures
execute if score #gen_dim vp_temp matches 1 run data modify storage thewii:vp_library/temp DimStructs set from storage thewii:vp_library/data WorldGen.TheEnd.Structures

# Get generated size
execute if score #struct_size vp_temp matches 1 run data modify storage thewii:vp_library/temp StructList set from storage thewii:vp_library/temp DimStructs.Small
execute if score #struct_size vp_temp matches 2 run data modify storage thewii:vp_library/temp StructList set from storage thewii:vp_library/temp DimStructs.Medium
execute if score #struct_size vp_temp matches 3 run data modify storage thewii:vp_library/temp StructList set from storage thewii:vp_library/temp DimStructs.Big

# Get sum of all weights
data modify storage thewii:vp_library/temp Array set from storage thewii:vp_library/temp StructList
function thewii:vp_library/generation/struct_gen/weight_sum

# Rng
scoreboard players operation #range vp_math = #weight_sum vp_temp
scoreboard players add #range vp_math 1
function thewii:vp_library/math/lcg/simplified_rng
execute if score #result vp_math matches 0 run scoreboard players add #result vp_math 1

# Get weightened item
data modify storage thewii:vp_library/temp Array set from storage thewii:vp_library/temp StructList
function thewii:vp_library/generation/struct_gen/items_array
data modify storage thewii:vp_library/temp Struct set from storage thewii:vp_library/temp Array[0]

execute if data storage thewii:vp_library/temp Struct run function thewii:vp_library/generation/struct_gen/generate_displacement
execute unless data storage thewii:vp_library/temp Struct if score #struct_size vp_temp matches 1 run say Failed to generate. There are no small structures in the array.
execute unless data storage thewii:vp_library/temp Struct if score #struct_size vp_temp matches 2 run say Failed to generate. There are no medium structures in the array.
execute unless data storage thewii:vp_library/temp Struct if score #struct_size vp_temp matches 3 run say Failed to generate. There are no big structures in the array.