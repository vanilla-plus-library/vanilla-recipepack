#> vplib:click_detection/v1/api/villager/talked
# From: Advancement 'vplib:click_detection/v1/villager/talked'

# Reset trigger
advancement revoke @s only vplib:click_detection/v1/villager/talked

# Run function if lib version matches
execute if score #vplib.click_detection.current vplib.load matches 1 run function vplib:click_detection/v1/villager/talked