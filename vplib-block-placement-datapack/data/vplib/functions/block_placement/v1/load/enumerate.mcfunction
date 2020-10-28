#> vplib:block_placement/v1/load/enumerate

# Set current version
execute unless score #vplib.block_placement.current vplib.load matches 1.. run scoreboard players set #vplib.block_placement.current vplib.load 1

# Set breaking version
execute unless score #vplib.block_placement.breaking vplib.load matches 1.. run scoreboard players set #vplib.block_placement.breaking vplib.load 1