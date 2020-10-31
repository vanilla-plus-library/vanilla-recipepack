# SHAPED (5 slots)

# Register
execute unless score #vanilla.spectral_arrow vplib.recipe matches 1.. store result score #vanilla.spectral_arrow vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:3b,id:"minecraft:glowstone_dust"},{Slot:11b,id:"minecraft:glowstone_dust"},{Slot:12b,id:"minecraft:arrow"},{Slot:13b,id:"minecraft:glowstone_dust"},{Slot:21b,id:"minecraft:glowstone_dust"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.spectral_arrow vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.spectral_arrow vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:spectral_arrow",Count:2b}