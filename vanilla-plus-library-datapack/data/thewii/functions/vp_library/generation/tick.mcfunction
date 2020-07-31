execute as @a[tag=!global.ignore,tag=!global.ignore.gen,sort=random,limit=1] at @s run function thewii:vp_library/generation/player
execute if entity @a[tag=!global.ignore,tag=!global.ignore.gui,tag=twvp.gen_bar] run function thewii:vp_library/generation/generation_bar

schedule function thewii:vp_library/generation/tick 5t replace