#> vplib:recipes/crafted/main

# Check if current recipes matches any of these recipes and run their function
execute if score #recipe vplib.temp = #vanilla.sheared_wool vplib.recipe run function vplib:recipes/crafted/sheared_wool
execute if score #recipe vplib.temp = #vanilla.cake vplib.recipe run function vplib:recipes/crafted/cake
execute if score #recipe vplib.temp = #vanilla.dense_beacon vplib.recipe run function vplib:recipes/crafted/dense_beacon