# Detect dimension
scoreboard players set #gen_dim vp_temp 0
execute if predicate vp_library:in_end run scoreboard players set #gen_dim vp_temp 1
execute if predicate vp_library:in_nether run scoreboard players set #gen_dim vp_temp -1

# Generate structures
execute if score $struct_gen vp_data matches 1 run function vp_library:generation/struct_gen/determine_size

# Generate ores
execute if score $ore_gen vp_data matches 1 run function vp_library:generation/ore_gen/get_orelist

scoreboard players add #chunks_in_a_row vp_temp 1