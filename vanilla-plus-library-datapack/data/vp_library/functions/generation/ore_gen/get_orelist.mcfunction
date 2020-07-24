
execute if score #gen_dim vp_temp matches -1 run data modify storage vp_library:temp Array set from storage vp_library:data WorldGen.TheNether.Ores
execute if score #gen_dim vp_temp matches 0 run data modify storage vp_library:temp Array set from storage vp_library:data WorldGen.Overworld.Ores
execute if score #gen_dim vp_temp matches 1 run data modify storage vp_library:temp Array set from storage vp_library:data WorldGen.TheEnd.Ores

execute if data storage vp_library:temp Array[0] run function vp_library:generation/ore_gen/orelist_loop