# Detect dimension
scoreboard players set #gen_dim twvp.temp 0
execute if predicate thewii:vp_library/generation/in_end run scoreboard players set #gen_dim twvp.temp 1
execute if predicate thewii:vp_library/generation/in_nether run scoreboard players set #gen_dim twvp.temp -1

# Generate structures
execute if score $struct_gen twvp.data matches 1 run function thewii:vp_library/generation/struct_gen/determine_size

# Generate ores
execute if score $ore_gen twvp.data matches 1 run function thewii:vp_library/generation/ore_gen/get_orelist

scoreboard players add #chunks_in_a_row twvp.temp 1