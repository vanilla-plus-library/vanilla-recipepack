execute store result score #weight vp_temp run data get storage thewii:vp_library/temp Array[0].Weight
execute if score #weight vp_temp matches 1.. run scoreboard players operation #result vp_math -= #weight vp_temp

execute if score #result vp_math matches 1.. run data remove storage thewii:vp_library/temp Array[0]
execute if score #result vp_math matches 1.. if data storage thewii:vp_library/temp Array[0] run function thewii:vp_library/generation/struct_gen/items_array