# Block placement validation
scoreboard players set #valid vplib.temp 1


# Replace blocks like grass
scoreboard players set #replace_block vplib.temp 0
execute if block ^ ^ ^-0.5 #vplib:block_placement/v1/valid_to_replace run scoreboard players set #replace_block vplib.temp 1


# The block must be valid
execute if score #replace_block vplib.temp matches 0 unless block ~ ~ ~ #vplib:block_placement/v1/valid_to_place run scoreboard players set #valid vplib.temp 0

# No significant entities in the block
execute if score #replace_block vplib.temp matches 0 align xyz if entity @e[type=!#vplib:block_placement/v1/ignore_to_place,dx=0,limit=1] run scoreboard players set #valid vplib.temp 0
execute if score #replace_block vplib.temp matches 1 positioned ^ ^ ^-0.5 align xyz if entity @e[type=!#vplib:block_placement/v1/ignore_to_place,dx=0,limit=1] run scoreboard players set #valid vplib.temp 0


# Call function tag if valid
execute if score #replace_block vplib.temp matches 0 if score #valid vplib.temp matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 run function #vplib:block_placement/api/placed_item_frame
execute if score #replace_block vplib.temp matches 1 if score #valid vplib.temp matches 1 positioned ^ ^ ^-0.5 align xyz positioned ~0.5 ~0.5 ~0.5 run function #vplib:block_placement/api/placed_item_frame

# Drop item if not valid
execute if score #valid vplib.temp matches 0 align xyz positioned ~0.5 ~0.5 ~0.5 run function #vplib:block_placement/api/drop_item_frame


# Kill frame
kill @s