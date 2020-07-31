data remove storage thewii:vp_library/temp struct
scoreboard players set #weight_sum twvp.temp 0

data modify storage thewii:vp_library/temp array set from storage thewii:vp_library/config worldGen.overworld.structures.small
function thewii:vp_library/generation/struct_gen/weight_sum

scoreboard players operation #range twvp.math = #weight_sum twvp.temp
scoreboard players add #range twvp.math 1
function thewii:vp_library/core/math/lcg/simplified_rng
execute if score #result twvp.math matches 0 run scoreboard players add #result twvp.math 1
tellraw @a ["Rng is ",{"score":{"name":"#result","objective":"rng"},"color":"green"}," between 0 and ",{"score":{"name":"#weight_sum","objective":"temp"}}]

data modify storage thewii:vp_library/temp array set from storage thewii:vp_library/config worldGen.overworld.structures.small
function thewii:vp_library/generation/struct_gen/items_array
data modify storage thewii:vp_library/temp struct set from storage thewii:vp_library/temp array[0]

tellraw @a ["Choosen weightned item is <",{"nbt":"struct.Name","storage":"thewii:vp_library/temp","color":"green"},">"]