summon area_effect_cloud ~ 0 ~ {Tags:["vp_library.chunk_scan","vp_library.chunk_scan_new"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

execute as @e[type=area_effect_cloud,tag=vp_library.chunk_scan_new,limit=1] at @s run function alchemist:generation/start_2