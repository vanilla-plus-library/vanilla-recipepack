
execute if score #gen_dim vp_temp matches -1 run data modify storage thewii:vp_library/temp Array set from storage thewii:vp_library/data WorldGen.TheNether.Ores
execute if score #gen_dim vp_temp matches 0 run data modify storage thewii:vp_library/temp Array set from storage thewii:vp_library/data WorldGen.Overworld.Ores
execute if score #gen_dim vp_temp matches 1 run data modify storage thewii:vp_library/temp Array set from storage thewii:vp_library/data WorldGen.TheEnd.Ores

execute if data storage thewii:vp_library/temp Array[0] run function thewii:vp_library/generation/ore_gen/orelist_loop