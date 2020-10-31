# SHAPED (9 slots)

# Register
execute unless score #vanilla.respawn_anchor vplib.recipe matches 1.. store result score #vanilla.respawn_anchor vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:crying_obsidian"},{Slot:3b,id:"minecraft:crying_obsidian"},{Slot:4b,id:"minecraft:crying_obsidian"},{Slot:11b,id:"minecraft:glowstone"},{Slot:12b,id:"minecraft:glowstone"},{Slot:13b,id:"minecraft:glowstone"},{Slot:20b,id:"minecraft:crying_obsidian"},{Slot:21b,id:"minecraft:crying_obsidian"},{Slot:22b,id:"minecraft:crying_obsidian"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.respawn_anchor vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.respawn_anchor vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:respawn_anchor",Count:1b}