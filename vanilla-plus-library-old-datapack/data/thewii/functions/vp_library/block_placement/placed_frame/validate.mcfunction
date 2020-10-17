# Block placement validation
scoreboard players set #valid twvp.temp 1


# Replace blocks like grass
scoreboard players set #replace_block twvp.temp 0
execute if block ^ ^ ^-0.5 #thewii:vp_library/block_placement/valid_to_replace run scoreboard players set #replace_block twvp.temp 1


# The block must be valid
execute if score #replace_block twvp.temp matches 0 unless block ~ ~ ~ #thewii:vp_library/block_placement/valid_to_place run scoreboard players set #valid twvp.temp 0

# No significant entities in the block
execute if score #replace_block twvp.temp matches 0 align xyz if entity @e[type=!#thewii:vp_library/block_placement/ignore_to_place,dx=0,limit=1] run scoreboard players set #valid twvp.temp 0
execute if score #replace_block twvp.temp matches 1 positioned ^ ^ ^-0.5 align xyz if entity @e[type=!#thewii:vp_library/block_placement/ignore_to_place,dx=0,limit=1] run scoreboard players set #valid twvp.temp 0


# Call function tag if valid
execute if score #replace_block twvp.temp matches 0 if score #valid twvp.temp matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 run function #thewii:vp_library/block_placement/placed_frame
execute if score #replace_block twvp.temp matches 1 if score #valid twvp.temp matches 1 positioned ^ ^ ^-0.5 align xyz positioned ~0.5 ~0.5 ~0.5 run function #thewii:vp_library/block_placement/placed_frame

# Drop item if not valid
execute if score #valid twvp.temp matches 0 align xyz positioned ~0.5 ~0.5 ~0.5 run function #thewii:vp_library/block_placement/drop_frame


# Kill frame
kill @s