# Break loop
scoreboard players set #found_furnace twvp.temp 1

# Get block data
data remove storage thewii:vp_library/temp block
data modify storage thewii:vp_library/temp block set from block ~ ~ ~

# Call function tag
function #thewii:vp_library/block_placement/placed_furnace