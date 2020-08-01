execute store result bossbar thewii:vp_library/generation/bossbar value store result score #chunks_remaining twvp.temp if entity @e[type=area_effect_cloud,tag=twvp.chunk_scan]
execute if score #chunks_remaining twvp.temp > #chunks_max twvp.temp store result bossbar thewii:vp_library/generation/bossbar max run scoreboard players operation #chunks_max twvp.temp = #chunks_remaining twvp.data

bossbar set thewii:vp_library/generation/bossbar name [{"text":"Chunks to generate: ","color":"gray"},{"score":{"objective":"twvp.temp","name":"#chunks_remaining"}},{"text":" (Generated "},{"score":{"objective":"twvp.data","name":"#chunks_in_a_row"}},{"text":" in a row)"}]

execute if score #chunks_remaining twvp.temp matches 1.. run bossbar set thewii:vp_library/generation/bossbar players @a[tag=!global.ignore,tag=!global.ignore.gui,tag=twvp.gen_bar]
execute unless score #chunks_remaining twvp.temp matches 1.. run bossbar set thewii:vp_library/generation/bossbar players @a[distance=..0]
execute unless score #chunks_remaining twvp.temp matches 1.. run scoreboard players reset #chunks_max twvp.temp
execute unless score #chunks_remaining twvp.temp matches 1.. run scoreboard players reset #chunks_in_a_row twvp.data