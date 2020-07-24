execute unless predicate vp_library:in_end unless block ~ 1 ~ barrier run function vp_library:generation/start

execute unless predicate vp_library:in_end positioned ~-8 0 ~-8 as @e[type=area_effect_cloud,distance=0..,tag=vp_library.chunk_scan,sort=nearest,limit=1] at @s run function vp_library:generation/chunk_scan