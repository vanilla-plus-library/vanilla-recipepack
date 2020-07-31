
setblock ~ ~ ~ structure_block{mode:"LOAD"}

data modify block ~ ~ ~ name set from storage thewii:vp_library/temp struct.name
data modify block ~ ~ ~ ignoreEntities set from storage thewii:vp_library/temp struct.ignoreEntities
data modify block ~ ~ ~ posX set from storage thewii:vp_library/temp struct.posX
data modify block ~ ~ ~ posY set from storage thewii:vp_library/temp struct.posY
data modify block ~ ~ ~ posZ set from storage thewii:vp_library/temp struct.posZ

setblock ~1 ~ ~ redstone_block