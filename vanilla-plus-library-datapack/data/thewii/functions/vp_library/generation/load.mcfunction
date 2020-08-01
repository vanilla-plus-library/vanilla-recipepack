# Lantern Load
scoreboard players operation #thewii.vplib.generation load = #thewii.vplib.core load

# Add to count
scoreboard players add #modules_installed twvp.temp 1

# Load World Configuration
data remove storage thewii:vp_library/data worldGen
scoreboard players set $generation twvp.data 0
scoreboard players set $ore_gen twvp.data 0
scoreboard players set $struct_gen twvp.data 0

function #thewii:vp_library/generation/load_worldgen

execute if data storage thewii:vp_library/data worldGen run scoreboard players set $generation twvp.data 1
execute if data storage thewii:vp_library/data worldGen.overworld.ores run scoreboard players set $ore_gen twvp.data 1
execute if data storage thewii:vp_library/data worldGen.overworld.struct run scoreboard players set $struct_gen twvp.data 1

# Schedule gen function
execute if score $generation twvp.data matches 1 run schedule function thewii:vp_library/generation/tick 5t