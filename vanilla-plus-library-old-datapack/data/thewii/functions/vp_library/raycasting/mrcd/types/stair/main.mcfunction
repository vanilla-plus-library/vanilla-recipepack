execute if block ~ ~ ~ #minecraft:stairs[half=top] run function thewii:vp_library/raycasting/mrcd/types/stair/top/main
execute if block ~ ~ ~ #minecraft:stairs[half=bottom] run function thewii:vp_library/raycasting/mrcd/types/stair/bottom/main
function thewii:vp_library/raycasting/mrcd/types/stair/template/remove_tags
tag @s add mrcd_detected
