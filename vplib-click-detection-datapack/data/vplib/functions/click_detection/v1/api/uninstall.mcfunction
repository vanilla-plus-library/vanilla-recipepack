#> vplib:click_detection/v1/api/uninstall
# Description: Uninstall module.
# From: #vplib:click_detection/api/uninstall

# Run function if lib version matches
execute if score #vplib.click_detection.current vplib.load matches 1 run function vplib:click_detection/v1/core/uninstall