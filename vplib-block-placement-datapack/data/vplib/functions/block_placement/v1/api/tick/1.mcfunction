#> vplib:block_placement/v1/api/tick/1
# Name: Tick/1
# Description: Run module tick
# From: #vplib:block_placement/api/tick/1

# Run 'tick/1' if lib version matches
execute if score #vplib.block_placement.current vplib.load matches 1 run function vplib:block_placement/v1/tick/1