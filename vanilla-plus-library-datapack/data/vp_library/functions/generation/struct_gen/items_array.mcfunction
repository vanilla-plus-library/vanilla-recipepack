execute store result score #weight vp_temp run data get storage vp_library:temp Array[0].Weight
execute if score #weight vp_temp matches 1.. run scoreboard players operation #result vp_math -= #weight vp_temp

execute if score #result vp_math matches 1.. run data remove storage vp_library:temp Array[0]
execute if score #result vp_math matches 1.. if data storage vp_library:temp Array[0] run function vp_library:generation/struct_gen/items_array