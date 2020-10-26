#> vplib:math/v1/color/hsv_to_rgb/armor

tellraw @a [{"text":"\n\n\n\n\n\n\n\n\n\n"}]
# Clear box
data remove block -30000000 0 4320 Items

# Set armor
replaceitem block -30000000 0 4320 container.0 minecraft:leather_boots{display:{color:0}}
replaceitem block -30000000 0 4320 container.1 minecraft:leather_leggings{display:{color:0}}
replaceitem block -30000000 0 4320 container.2 minecraft:leather_chestplate{display:{color:0}}
replaceitem block -30000000 0 4320 container.3 minecraft:leather_helmet{display:{color:0}}

# Loop color
scoreboard players operation $color vplib.math += $color_rate vplib.math
execute unless score $color vplib.math matches 0..3599 run scoreboard players set $color vplib.math 0

# Fading saturation
execute unless entity @p[tag=vplib.sat_down] run scoreboard players operation $saturation vplib.math += $saturation_rate vplib.math
execute if entity @p[tag=vplib.sat_down] run scoreboard players operation $saturation vplib.math -= $saturation_rate vplib.math
execute if score $saturation vplib.math matches 1000.. run tag @p add vplib.sat_down
execute if score $saturation vplib.math matches ..0 run tag @p remove vplib.sat_down


# Generate rgb color
scoreboard players set #hsv.h_degrees vplib.math 1
scoreboard players operation #hsv.h vplib.math = $color vplib.math
scoreboard players operation #hsv.s vplib.math = $saturation vplib.math
scoreboard players set #hsv.v vplib.math 1000
scoreboard players set #scale_factor vplib.math 1000
function vplib:math/v1/color/hsv_to_rgb/start

# Store color
execute store result block -30000000 0 4320 Items[].tag.display.color int 1 run scoreboard players get #rgb.int vplib.math

# Replace armor
loot replace entity @p armor.feet 4 mine -30000000 0 4320 air{drop_contents:1b}