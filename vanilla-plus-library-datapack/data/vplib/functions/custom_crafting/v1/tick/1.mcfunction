#> vplib:custom_crafting/v1/tick/1

# Store gametime(Useful when debugging)
execute store result score #gametime vpcr.data run time query gametime

# As blocks
execute as @e[type=minecraft:armor_stand,tag=vplib.custom_crafting] at @s run function vplib:custom_crafting/v1/block/table/main