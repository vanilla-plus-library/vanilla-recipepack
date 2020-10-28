#> vplib:block_placement/v1/api/placed_item_frame
# From: #vplib:block_placement/api/placed_item_frame

# Revoke trigger
advancement revoke @s only vplib:block_placement/v1/placed_item_frame

# Run function if lib version matches
execute if score #vplib.block_placement.current vplib.load matches 1 run function vplib:block_placement/v1/placed/item_frame/start