#> vplib:click_detection/v1/api/tick/1
# Description: Tick module
# From: #vplib:click_detection/api/tick/1

# Run function if lib version matches
execute if score #vplib.click_detection.current vplib.load matches 1 run function vplib:click_detection/v1/tick/1