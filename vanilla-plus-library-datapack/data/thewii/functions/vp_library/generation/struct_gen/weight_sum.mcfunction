execute store result score #weight vp_temp run data get storage thewii:vp_library/temp Array[0].Weight
execute if score #weight vp_temp matches 1.. run scoreboard players operation #weight_sum vp_temp += #weight vp_temp

data remove storage thewii:vp_library/temp Array[0]
execute if data storage thewii:vp_library/temp Array[0] run function thewii:vp_library/generation/struct_gen/weight_sum