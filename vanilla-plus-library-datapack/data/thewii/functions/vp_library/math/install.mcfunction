execute unless data storage thewii:vp_library/data modules run function thewii:vp_library/core/install

# Math module objective
scoreboard objectives add twvp.math dummy

# Load LCG
scoreboard players set #-1 twvp.math -1
scoreboard players set #lcg.constant twvp.math 1103515245

execute unless score #lcg twvp.math matches -2146473648.. run function thewii:vp_library/math/lcg/uuid_reset

# Load used integers
scoreboard players set #-1 twvp.math -1
scoreboard players set #2 twvp.math 2
scoreboard players set #4 twvp.math 4
scoreboard players set #8 twvp.math 8
scoreboard players set #16 twvp.math 16
scoreboard players set #32 twvp.math 32
scoreboard players set #64 twvp.math 64
scoreboard players set #128 twvp.math 128
scoreboard players set #256 twvp.math 256
scoreboard players set #512 twvp.math 512