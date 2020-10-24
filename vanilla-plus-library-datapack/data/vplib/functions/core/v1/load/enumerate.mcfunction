#> vplib:core/v1/load/enumerate

# Set current version
execute unless score #vplib.core.current vplib.load matches 1.. run scoreboard players set #vplib.core.current vplib.load 1

# Set breaking version
execute unless score #vplib.core.breaking vplib.load matches 1.. run scoreboard players set #vplib.core.breaking vplib.load 1