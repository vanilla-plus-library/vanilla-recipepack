
execute if score #gen_dim twvp.temp matches -1 run data modify storage thewii:vp_library/temp array set from storage thewii:vp_library/data worldGen.theNether.ores
execute if score #gen_dim twvp.temp matches 0 run data modify storage thewii:vp_library/temp array set from storage thewii:vp_library/data worldGen.overworld.ores
execute if score #gen_dim twvp.temp matches 1 run data modify storage thewii:vp_library/temp array set from storage thewii:vp_library/data worldGen.theEnd.ores

execute if data storage thewii:vp_library/temp array[0] run function thewii:vp_library/generation/ore_gen/orelist_loop