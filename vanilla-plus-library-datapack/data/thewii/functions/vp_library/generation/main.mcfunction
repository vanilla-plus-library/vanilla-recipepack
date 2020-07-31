execute as @a[tag=!global.ignore,tag=!global.ignore.gen] at @s run function thewii:vp_library/generation/player
execute if entity @a[tag=!global.ignore,tag=!global.ignore.gui,tag=vp_library.gen_bar] run function thewii:vp_library/generation/generation_bar

schedule function thewii:vp_library/generation/main 5t replace