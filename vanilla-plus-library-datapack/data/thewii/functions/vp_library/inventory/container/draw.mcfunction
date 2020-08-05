# Get item and remove Slot
data remove storage thewii:vp_library/temp item
data modify storage thewii:vp_library/temp item set from block ~ ~ ~ Items[0]
data remove storage thewii:vp_library/temp item.Slot

# Get count and limit it to max
execute store result score #item_count twvp.temp run data get storage thewii:vp_library/temp item.Count
execute store result storage thewii:vp_library/temp item.Count byte 1 run scoreboard players operation #item_count twvp.temp < #max_transfer twta.data