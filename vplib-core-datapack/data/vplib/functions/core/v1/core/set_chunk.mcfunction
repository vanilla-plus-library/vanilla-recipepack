#> vplib:core/v1/core/set_chunk

# Forceload
forceload add -30000000 4320

# Utility blocks
setblock -30000000 0 4320 minecraft:yellow_shulker_box
setblock -30000000 0 4321 minecraft:oak_sign
setblock -30000000 0 4322 minecraft:hopper
setblock -30000000 0 4323 minecraft:dropper

# Protection bedrock
setblock -30000000 1 4320 minecraft:bedrock
setblock -30000000 1 4321 minecraft:bedrock
setblock -30000000 1 4322 minecraft:bedrock
setblock -30000000 1 4323 minecraft:bedrock

# Entity
summon minecraft:armor_stand 30000000 0 4320 {Tags:["vplib.entity"],UUID:[I; 67, 0, 0, 0],Marker:1b,Small:1b,Invisible:1b,NoGravity:1b}
