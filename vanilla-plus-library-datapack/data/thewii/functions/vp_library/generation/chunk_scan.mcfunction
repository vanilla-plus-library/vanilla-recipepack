execute store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625

execute at @s run fill ~ 1 ~ ~15 1 ~15 barrier

execute at @s positioned ~16 ~ ~ unless block ~ 1 ~ barrier run summon area_effect_cloud ~ 0 ~ {Tags:["vp_library.chunk_scan"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute at @s positioned ~-16 ~ ~ unless block ~ 1 ~ barrier run summon area_effect_cloud ~ 0 ~ {Tags:["vp_library.chunk_scan"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute at @s positioned ~ ~ ~16 unless block ~ 1 ~ barrier run summon area_effect_cloud ~ 0 ~ {Tags:["vp_library.chunk_scan"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute at @s positioned ~ ~ ~-16 unless block ~ 1 ~ barrier run summon area_effect_cloud ~ 0 ~ {Tags:["vp_library.chunk_scan"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

execute at @s run kill @e[type=area_effect_cloud,tag=vp_library.chunk_scan,distance=..1]

execute at @s run function vp_library:generation/generate_chunk