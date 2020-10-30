#> vplib:click_detection/v1/villager/player

# Prepare
execute unless entity @s[tag=vplib.click.prepared] run function vplib:click_detection/v1/villager/prepare

# Teleport
execute if entity @s[tag=vplib.click.prepared] run function vplib:click_detection/v1/villager/teleport