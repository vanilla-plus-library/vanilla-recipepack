#> vplib:recipes/crafted/sheared_wool

# Ignore slot
data modify storage vplib:temp ignoredSlots append from storage vplib:temp containerGrid[{id:"minecraft:shears"}].Slot

# Count wools(since the shears is a tool, its count is 1 and the craft all feature will always get the lowest count in the grid)
execute if score #button.craft_all vplib.temp matches 1 run data modify storage vplib:temp item set from storage vplib:temp containerGrid
execute if score #button.craft_all vplib.temp matches 1 run data remove storage vplib:temp item[{id:"minecraft:shears"}]
execute if score #button.craft_all vplib.temp matches 1 store result score #crafted vplib.temp run data get storage vplib:temp item[0].Count

# Get shears damage
execute store result score #damage vplib.temp run data get storage vplib:temp containerGrid[{id:"minecraft:shears"}].tag.Damage

# Calculate uses remaining
scoreboard players set #uses_remaining vplib.temp 238
scoreboard players operation #uses_remaining vplib.temp -= #damage vplib.temp

# Limit the crafted amount to the damage remaining
scoreboard players operation #crafted vplib.temp < #uses_remaining vplib.temp

# Increase tool damage based on the crafted amount
scoreboard players operation #damage vplib.temp += #crafted vplib.temp

# Store the damage if shears has durability remaining
execute if score #damage vplib.temp matches ..237 store result block ~ ~ ~ Items[{id:"minecraft:shears"}].tag.Damage int 1 run scoreboard players get #damage vplib.temp

# Remove shears if damage is equal or higher to durability
execute if score #damage vplib.temp matches 238.. run data remove block ~ ~ ~ Items[{id:"minecraft:shears"}]




