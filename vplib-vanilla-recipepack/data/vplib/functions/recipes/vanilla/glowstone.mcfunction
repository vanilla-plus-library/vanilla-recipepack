# SHAPED (4 slots)

# Register
execute unless score #vanilla.glowstone vplib.recipe matches 1.. store result score #vanilla.glowstone vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:glowstone_dust"},{Slot:3b,id:"minecraft:glowstone_dust"},{Slot:11b,id:"minecraft:glowstone_dust"},{Slot:12b,id:"minecraft:glowstone_dust"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.glowstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:glowstone_dust"},{Slot:4b,id:"minecraft:glowstone_dust"},{Slot:12b,id:"minecraft:glowstone_dust"},{Slot:13b,id:"minecraft:glowstone_dust"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.glowstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:11b,id:"minecraft:glowstone_dust"},{Slot:12b,id:"minecraft:glowstone_dust"},{Slot:20b,id:"minecraft:glowstone_dust"},{Slot:21b,id:"minecraft:glowstone_dust"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.glowstone vplib.recipe
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:12b,id:"minecraft:glowstone_dust"},{Slot:13b,id:"minecraft:glowstone_dust"},{Slot:21b,id:"minecraft:glowstone_dust"},{Slot:22b,id:"minecraft:glowstone_dust"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.glowstone vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.glowstone vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:glowstone",Count:1b}