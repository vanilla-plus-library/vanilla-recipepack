
setblock ~ ~ ~ structure_block{mode:"LOAD"}

data modify block ~ ~ ~ name set from storage thewii:vp_library/temp Struct.Name
data modify block ~ ~ ~ ignoreEntities set from storage thewii:vp_library/temp Struct.ignoreEntities
data modify block ~ ~ ~ posX set from storage thewii:vp_library/temp Struct.posX
data modify block ~ ~ ~ posY set from storage thewii:vp_library/temp Struct.posY
data modify block ~ ~ ~ posZ set from storage thewii:vp_library/temp Struct.posZ

setblock ~1 ~ ~ redstone_block