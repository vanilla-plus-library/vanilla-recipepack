#> vplib:block_placement/v1/placed/blast_furnace/found

# Break loop
scoreboard players set #found_furnace vplib.temp 1

# Get block data
data remove storage vplib:temp block
data modify storage vplib:temp block set from block ~ ~ ~

# Call function tag
function #vplib:block_placement/api/placed_blast_furnace