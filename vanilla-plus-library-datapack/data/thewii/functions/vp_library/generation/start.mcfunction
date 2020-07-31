summon area_effect_cloud ~ 0 ~ {Tags:["twvp.chunk_scan","twvp.chunk_scan_new"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

execute as @e[type=area_effect_cloud,tag=twvp.chunk_scan_new,limit=1] at @s run function thewii:vp_library/generation/start_2