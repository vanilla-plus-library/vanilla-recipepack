# Size generation chance
scoreboard players set #struct_size vp_temp 0
execute if predicate thewii:vp_library/generation/low_biomes if predicate thewii:vp_library/generation/small_struct_low run scoreboard players set #struct_size vp_temp 1
execute unless predicate thewii:vp_library/generation/low_biomes if predicate thewii:vp_library/generation/small_struct_high run scoreboard players set #struct_size vp_temp 1
execute if predicate thewii:vp_library/generation/low_biomes if predicate thewii:vp_library/generation/medium_struct_low run scoreboard players set #struct_size vp_temp 2
execute unless predicate thewii:vp_library/generation/low_biomes if predicate thewii:vp_library/generation/medium_struct_high run scoreboard players set #struct_size vp_temp 2
execute if predicate thewii:vp_library/generation/low_biomes if predicate thewii:vp_library/generation/big_struct_low run scoreboard players set #struct_size vp_temp 3
execute unless predicate thewii:vp_library/generation/low_biomes if predicate thewii:vp_library/generation/big_struct_high run scoreboard players set #struct_size vp_temp 3
#tellraw @a ["Structure size is ",{"score":{"name":"#struct_size","objective":"vp_temp"}}]

# Proceed generation if there is a structure in this chunk
execute if score #struct_size vp_temp matches 1..3 run function thewii:vp_library/generation/struct_gen/get_structures