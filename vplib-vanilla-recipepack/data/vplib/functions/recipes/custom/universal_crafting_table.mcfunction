# SHAPED (7 slots)

# Register
execute unless score #vplib/universal_crafting_table vplib.recipe matches 1.. store result score #vplib/universal_crafting_table vplib.recipe run scoreboard players add $register vplib.recipe 1

# Condition
execute if score #recipe vplib.temp matches 0 if data storage vplib:temp {recipeInput:[{Slot:2b,id:"minecraft:stone"},{Slot:3b,id:"minecraft:stone"},{Slot:4b,id:"minecraft:stone"},{Slot:11b,id:"minecraft:oak_planks"},{Slot:12b,id:"minecraft:crafting_table"},{Slot:13b,id:"minecraft:oak_planks"},{Slot:20b,id:"minecraft:oak_planks"},{Slot:21b,id:"minecraft:iron_ingot"},{Slot:22b,id:"minecraft:oak_planks"}]} run scoreboard players operation #recipe vplib.temp = #vplib/universal_crafting_table vplib.recipe

# Output
execute if score #recipe vplib.temp = #vplib/universal_crafting_table vplib.recipe run data modify storage vplib:temp recipeOutput set value {id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:438900,display:{Name:'{"text":"Universal Crafting Table","italic":false}'},EntityTag:{Tags:["vplib.place_block","vplib.block.table"],Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b}}}