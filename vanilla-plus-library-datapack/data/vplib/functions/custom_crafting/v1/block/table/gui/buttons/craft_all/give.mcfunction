#> vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/give

# Found player
scoreboard players set #found_player vpcr.temp 1

# Give items
loot give @s mine ~ 255 ~ minecraft:air{drop_contents:1b}

# Sound
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.25 1

#execute if score #clicked vpcr.temp matches 1 at @s run particle flame ~ ~1 ~ 0.25 0.25 0.25 0.05 100 normal
#execute if score #clicked vpcr.temp matches 2 at @s run particle soul_fire_flame ~ ~1 ~ 0.25 0.25 0.25 0.05 100 normal