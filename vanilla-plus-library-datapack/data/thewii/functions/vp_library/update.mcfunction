scoreboard players set $version vp_data 000300
data merge storage vp_library:data {Version:"0.3 beta"}

tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Vanilla+ Library updated to v","color":"white","bold":false},{"nbt":"Version","storage":"vp_library:data","color":"white","bold":false},{"text":"!","color":"white","bold":false}]
