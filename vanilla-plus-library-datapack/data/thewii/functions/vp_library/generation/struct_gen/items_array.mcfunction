execute store result score #weight twvp.temp run data get storage thewii:vp_library/temp array[0].weight
execute if score #weight twvp.temp matches 1.. run scoreboard players operation #result vp_math -= #weight twvp.temp

execute if score #result vp_math matches 1.. run data remove storage thewii:vp_library/temp array[0]
execute if score #result vp_math matches 1.. if data storage thewii:vp_library/temp array[0] run function thewii:vp_library/generation/struct_gen/items_array