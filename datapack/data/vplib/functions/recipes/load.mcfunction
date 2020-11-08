#> vplib:recipes/load

# Missing dependecy
execute unless score #vplib.custom_crafting.current vplib.load matches 1.. run tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"red","bold":true},{"text":"Failed to load Vanilla+ Library Vanilla Recipepack __ver. Vanilla+ Library: Custom Crafting is missing.","color":"white","bold":false}]

# Sucessfuly loaded
execute if score #vplib.custom_crafting.current vplib.load matches 1.. run function vplib:recipes/load2