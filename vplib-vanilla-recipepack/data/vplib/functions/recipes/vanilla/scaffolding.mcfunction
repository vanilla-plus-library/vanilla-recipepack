# SHAPED (7 slots)

# Register
execute unless score #vanilla.scaffolding vplib.recipe matches 1.. store result score #vanilla.scaffolding vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:bamboo"},{Slot:3b,id:"minecraft:string"},{Slot:4b,id:"minecraft:bamboo"},{Slot:11b,id:"minecraft:bamboo"},{Slot:13b,id:"minecraft:bamboo"},{Slot:20b,id:"minecraft:bamboo"},{Slot:22b,id:"minecraft:bamboo"}]} run scoreboard players operation #recipe vplib.temp = #vanilla.scaffolding vplib.recipe

# Output
execute if score #recipe vplib.temp = #vanilla.scaffolding vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:scaffolding",Count:6b}