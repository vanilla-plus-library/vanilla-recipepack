# Store values from the first element of the list
execute store result score #id vp_temp run data get storage thewii:vp_library/temp Array[0].id
execute store result score #minVeins vp_temp run data get storage thewii:vp_library/temp Array[0].minVeins
execute store result score #maxVeins vp_temp run data get storage thewii:vp_library/temp Array[0].maxVeins
execute store result score #minY vp_temp run data get storage thewii:vp_library/temp Array[0].minY
execute store result score #maxY vp_temp run data get storage thewii:vp_library/temp Array[0].maxY
execute store result score #minSize vp_temp run data get storage thewii:vp_library/temp Array[0].minSize
execute store result score #maxSize vp_temp run data get storage thewii:vp_library/temp Array[0].maxSize

function thewii:vp_library/generation/ore_gen/generate_veins

# Loop until ore list is empty 
data remove storage thewii:vp_library/temp Array[0]
execute if data storage thewii:vp_library/temp Array[0] run function thewii:vp_library/generation/ore_gen/orelist_loop