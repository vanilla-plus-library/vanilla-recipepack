scoreboard players reset * vp_temp
scoreboard players reset * vp_data

scoreboard objectives add vp_temp dummy
scoreboard players set $1.16 vp_temp 0 
function vp_library:detect_1.16

scoreboard players operation $1.15 vp_data = $1.15 vp_temp
scoreboard players operation $1.16 vp_data = $1.16 vp_temp

scoreboard objectives add vp_data dummy
scoreboard objectives add vp_temp dummy
scoreboard objectives add vp_id dummy

execute if score $1.16 vp_data matches 0 as @a store result score @s vp_id run data get entity @s UUIDMost 0.0000000001
execute if score $1.16 vp_data matches 1 as @a store result score @s vp_id run data get entity @s UUID[0]

function mrcd:init
function vp_library:math/init

team add vp_nocollision "vp_nocollision"
team modify vp_nocollision collisionRule never

scoreboard objectives add vp_villager minecraft.custom:minecraft.talked_to_villager

scoreboard players set $installed vp_data 1

# Forceload chunk
execute unless data storage vp_library:data {Installed:1b} run function vp_library:loaded_chunk/add

scoreboard players set $vplib.ver load 301
data merge storage vp_library:data {FirstReload:1b,Version:"0.3.1 alpha",Installed:1b}