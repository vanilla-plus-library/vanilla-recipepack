data remove storage vp_library:temp Struct
scoreboard players set #weight_sum vp_temp 0

data modify storage vp_library:temp Array set from storage vp_library:config WorldGen.Overworld.Structures.Small
function vp_library:generation/struct_gen/weight_sum

scoreboard players operation #range vp_math = #weight_sum vp_temp
scoreboard players add #range vp_math 1
function vp_library:core/math/lcg/simplified_rng
execute if score #result vp_math matches 0 run scoreboard players add #result vp_math 1
tellraw @a ["Rng is ",{"score":{"name":"#result","objective":"rng"},"color":"green"}," between 0 and ",{"score":{"name":"#weight_sum","objective":"temp"}}]

data modify storage vp_library:temp Array set from storage vp_library:config WorldGen.Overworld.Structures.Small
function vp_library:generation/struct_gen/items_array
data modify storage vp_library:temp Struct set from storage vp_library:temp Array[0]

tellraw @a ["Choosen weightned item is <",{"nbt":"Struct.Name","storage":"vp_library:temp","color":"green"},">"]