execute as @a[tag=!global.ignore,tag=!global.ignore.gen] at @s run function vp_library:generation/player

execute if entity @a[tag=!global.ignore,tag=!global.ignore.gui,tag=vp_library.gen_bar] run function vp_library:generation/generation_bar