# SHAPED (9 slots)

# Register
execute unless score #vanilla.conduit vplib.recipe matches 1.. store result score #vanilla.conduit vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:nautilus_shell"},{Slot:3b,id:"minecraft:nautilus_shell"},{Slot:4b,id:"minecraft:nautilus_shell"},{Slot:11b,id:"minecraft:nautilus_shell"},{Slot:12b,id:"minecraft:heart_of_the_sea"},{Slot:13b,id:"minecraft:nautilus_shell"},{Slot:20b,id:"minecraft:nautilus_shell"},{Slot:21b,id:"minecraft:nautilus_shell"},{Slot:22b,id:"minecraft:nautilus_shell"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.conduit vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.conduit vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:conduit",Count:1b}