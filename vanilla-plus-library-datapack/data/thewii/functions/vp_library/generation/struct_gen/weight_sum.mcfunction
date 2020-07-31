execute store result score #weight vp_temp run data get storage vp_library:temp Array[0].Weight
execute if score #weight vp_temp matches 1.. run scoreboard players operation #weight_sum vp_temp += #weight vp_temp

data remove storage vp_library:temp Array[0]
execute if data storage vp_library:temp Array[0] run function vp_library:generation/struct_gen/weight_sum