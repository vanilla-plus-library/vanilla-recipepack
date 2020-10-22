#> vplib:custom_crafting/v1/block/table/gui/buttons/craft_all/give

# Found player
scoreboard players set #found_player vpcr.temp 1

# Drop items using a shulker box
setblock ~ 255 ~ minecraft:yellow_shulker_box

data modify block ~ 255 ~ Items set from storage vplib:temp array
execute positioned ~ ~0.5 ~ run loot spawn ~ ~ ~ mine ~ 255 ~ minecraft:air{drop_contents:1b}

setblock ~ 255 ~ minecraft:air

# Edit items
scoreboard players set #set_item vpcr.temp 0
scoreboard players set #set_owner vpcr.temp 1
scoreboard players set #set_delay vpcr.temp 1
data modify storage vplib:temp uuid set from entity @s UUID

execute positioned ~ ~0.5 ~ as @e[type=minecraft:item,distance=..0.25,nbt={Age:0s}] run function vplib:custom_crafting/v1/block/table/general/summon_items_2

# Sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.25 1