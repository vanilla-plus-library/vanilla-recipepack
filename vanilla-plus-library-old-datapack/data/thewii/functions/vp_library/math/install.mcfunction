#> thewii:vp_library/math/install

# Math module objective
scoreboard objectives add twvp.math dummy

# Load used integers
function thewii:vp_library/math/load_scores

# Load LCG
scoreboard players set #-1 twvp.math -1
scoreboard players set #lcg.constant twvp.math 1103515245

execute unless score #lcg twvp.math matches -2146473648.. run function thewii:vp_library/math/lcg/uuid_reset