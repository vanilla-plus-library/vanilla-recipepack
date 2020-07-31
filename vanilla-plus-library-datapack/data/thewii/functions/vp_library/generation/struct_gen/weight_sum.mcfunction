execute store result score #weight twvp.temp run data get storage thewii:vp_library/temp array[0].weight
execute if score #weight twvp.temp matches 1.. run scoreboard players operation #weight_sum twvp.temp += #weight twvp.temp

data remove storage thewii:vp_library/temp array[0]
execute if data storage thewii:vp_library/temp array[0] run function thewii:vp_library/generation/struct_gen/weight_sum