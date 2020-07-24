scoreboard objectives add vp_temp dummy
scoreboard players set $1.16 vp_temp 0 
function vp_library:detect_1.16

scoreboard players operation $1.15 vp_data = $1.15 vp_temp
scoreboard players operation $1.16 vp_data = $1.16 vp_temp

execute unless data storage vp_library:data FirstReload run function vp_library:install
execute if score $installed vp_data matches 1 run scoreboard players set $vplib.ver load 301

execute if score $vplib.ver load matches 301.. run tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Vanilla+ Library v","color":"white","bold":false},{"nbt":"Version","storage":"vp_library:data","color":"white","bold":false},{"text":" is loaded.","color":"white","bold":false}]
execute if score $installed vp_data matches 1 unless score $vplib.ver load matches 301.. run function vp_library:update


execute if score $installed vp_data matches 1 run function vp_library:load_config
execute if score $installed vp_data matches 1 run function vp_library:math/load

execute if score $installed vp_data matches 1 run bossbar add vp_library:gen_bar "Vanila+ Library - World Generation"

execute if score $installed vp_data matches 1 run execute if score $generation vp_data matches 1 run schedule function vp_library:tick_2 1t replace
execute if score $installed vp_data matches 1 run schedule function vp_library:villager/main 1t replace