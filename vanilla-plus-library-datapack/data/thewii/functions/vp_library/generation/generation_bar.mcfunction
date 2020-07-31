execute store result bossbar thewii:vp_library/gen_bar value store result score #chunks_remaining vp_temp if entity @e[type=area_effect_cloud,tag=vp_library.chunk_scan]
execute if score #chunks_remaining vp_temp > #chunks_max vp_temp store result bossbar thewii:vp_library/gen_bar max run scoreboard players operation #chunks_max vp_temp = #chunks_remaining vp_temp

bossbar set thewii:vp_library/gen_bar name [{"text":"Chunks to generate: ","color":"gray"},{"score":{"objective":"vp_temp","name":"#chunks_remaining"}},{"text":" (Generated "},{"score":{"objective":"vp_temp","name":"#chunks_in_a_row"}},{"text":" in a row)"}]

execute if score #chunks_remaining vp_temp matches 1.. run bossbar set thewii:vp_library/gen_bar players @a[tag=!global.ignore,tag=!global.ignore.gui,tag=vp_library.gen_bar]
execute unless score #chunks_remaining vp_temp matches 1.. run bossbar set thewii:vp_library/gen_bar players @a[distance=..0]
execute unless score #chunks_remaining vp_temp matches 1.. run scoreboard players set #chunks_max vp_temp 0
execute unless score #chunks_remaining vp_temp matches 1.. run scoreboard players set #chunks_in_a_row vp_temp 0