# Store values from the first element of the list
execute store result score #id twvp.temp run data get storage thewii:vp_library/temp array[0].id
execute store result score #minVeins twvp.temp run data get storage thewii:vp_library/temp array[0].minVeins
execute store result score #maxVeins twvp.temp run data get storage thewii:vp_library/temp array[0].maxVeins
execute store result score #minY twvp.temp run data get storage thewii:vp_library/temp array[0].minY
execute store result score #maxY twvp.temp run data get storage thewii:vp_library/temp array[0].maxY
execute store result score #minSize twvp.temp run data get storage thewii:vp_library/temp array[0].minSize
execute store result score #maxSize twvp.temp run data get storage thewii:vp_library/temp array[0].maxSize

function thewii:vp_library/generation/ore_gen/generate_veins

# Loop until ore list is empty 
data remove storage thewii:vp_library/temp array[0]
execute if data storage thewii:vp_library/temp array[0] run function thewii:vp_library/generation/ore_gen/orelist_loop