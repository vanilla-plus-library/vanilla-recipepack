fill ~ 0 ~ ~15 0 ~15 barrier replace bedrock

execute positioned ~16 ~ ~ if block ~ 0 ~ bedrock run summon area_effect_cloud ~ 0 ~ {Tags:["twvp.chunk_scan"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute positioned ~-16 ~ ~ if block ~ 0 ~ bedrock run summon area_effect_cloud ~ 0 ~ {Tags:["twvp.chunk_scan"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute positioned ~ ~ ~16 if block ~ 0 ~ bedrock run summon area_effect_cloud ~ 0 ~ {Tags:["twvp.chunk_scan"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute positioned ~ ~ ~-16 if block ~ 0 ~ bedrock run summon area_effect_cloud ~ 0 ~ {Tags:["twvp.chunk_scan"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

kill @e[type=area_effect_cloud,tag=twvp.chunk_scan,distance=..1]

function thewii:vp_library/generation/generate_chunk