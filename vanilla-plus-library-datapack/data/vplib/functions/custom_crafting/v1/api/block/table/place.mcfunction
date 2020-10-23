#> vplib:custom_crafting/v1/api/block/table/place
# Description: Place universal crafting table.
# From: #vplib:custom_crafting/api/block/table/place

# Run function if lib version matches
execute if data storage vplib:data modules."custom_crafting".version{current: 1} run function vplib:custom_crafting/v1/block/table/place