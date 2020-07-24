schedule clear vp_library:tick_2

scoreboard objectives add vp_temp dummy
scoreboard players set $1.15 vp_temp 0 
function vp_library:detect_1.15

execute if score $1.15 vp_temp matches 0 run tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"[Datapack]: ","color":"red","bold":true},{"text":"Vanilla+ Library failed to load. It needs at least minecraft 1.15.","color":"white","bold":false}]

execute if score $1.15 vp_temp matches 1 run function vp_library:load_2
execute if score $1.15 vp_temp matches 0 run scoreboard objectives remove vp_temp