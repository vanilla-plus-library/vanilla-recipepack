# Lantern Load
scoreboard players set #vplib.raycasting thewii.load 010000

# Add to count
scoreboard players add #modules_loaded twvp.data 1

# Load variables
execute if data storage thewii:vp_library/data modules.raycasting run function thewii:vp_library/raycasting/load_scores