scoreboard players set #invalid_terrain twvp.temp -3

execute if predicate thewii:vp_library/generation/invalid_feature run scoreboard players add #invalid_terrain twvp.temp 3

execute unless block ~ ~-1 ~ #thewii:vp_library/generation/valid_terrain run scoreboard players add #invalid_terrain twvp.temp 3

execute unless block ~2 ~-1 ~ #thewii:vp_library/generation/valid_terrain run scoreboard players add #invalid_terrain twvp.temp 2
execute unless block ~-2 ~-1 ~ #thewii:vp_library/generation/valid_terrain run scoreboard players add #invalid_terrain twvp.temp 2
execute unless block ~ ~-1 ~2 #thewii:vp_library/generation/valid_terrain run scoreboard players add #invalid_terrain twvp.temp 2
execute unless block ~ ~-1 ~-2 #thewii:vp_library/generation/valid_terrain run scoreboard players add #invalid_terrain twvp.temp 2
execute unless block ~2 ~-1 ~2 #thewii:vp_library/generation/valid_terrain run scoreboard players add #invalid_terrain twvp.temp 2
execute unless block ~-2 ~-1 ~-2 #thewii:vp_library/generation/valid_terrain run scoreboard players add #invalid_terrain twvp.temp 2
execute unless block ~2 ~-1 ~-2 #thewii:vp_library/generation/valid_terrain run scoreboard players add #invalid_terrain twvp.temp 2
execute unless block ~-2 ~-1 ~2 #thewii:vp_library/generation/valid_terrain run scoreboard players add #invalid_terrain twvp.temp 2

execute unless block ~ ~4 ~ #thewii:vp_library/generation/descend_through run scoreboard players add #invalid_terrain twvp.temp 3

execute unless block ~2 ~1 ~ #thewii:vp_library/generation/descend_through run scoreboard players add #invalid_terrain twvp.temp 1
execute unless block ~-2 ~1 ~ #thewii:vp_library/generation/descend_through run scoreboard players add #invalid_terrain twvp.temp 1
execute unless block ~ ~2 ~1 #thewii:vp_library/generation/descend_through run scoreboard players add #invalid_terrain twvp.temp 1
execute unless block ~ ~2 ~-1 #thewii:vp_library/generation/descend_through run scoreboard players add #invalid_terrain twvp.temp 1
execute unless block ~2 ~1 ~2 #thewii:vp_library/generation/descend_through run scoreboard players add #invalid_terrain twvp.temp 1
execute unless block ~-2 ~1 ~-2 #thewii:vp_library/generation/descend_through run scoreboard players add #invalid_terrain twvp.temp 1
execute unless block ~2 ~2 ~-2 #thewii:vp_library/generation/descend_through run scoreboard players add #invalid_terrain twvp.temp 1
execute unless block ~-2 ~2 ~2 #thewii:vp_library/generation/descend_through run scoreboard players add #invalid_terrain twvp.temp 1


summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["vp_pos"]}
execute store result score #pos.x twvp.temp run data get entity @e[type=area_effect_cloud,tag=vp_pos,limit=1,sort=nearest] Pos[0]
execute store result score #pos.z twvp.temp run data get entity @e[type=area_effect_cloud,tag=vp_pos,limit=1,sort=nearest] Pos[2]
execute if score #invalid_terrain twvp.temp matches ..-1 run tellraw @a ["Structure spawned at ",{"score":{"name":"#pos.x","objective":"twvp.temp"}}," ~ ",{"score":{"name":"#pos.z","objective":"twvp.temp"}},". Terrain level: ",{"score":{"name":"#invalid_terrain","objective":"twvp.temp"}}]
execute if score #invalid_terrain twvp.temp matches 0.. run tellraw @a ["Failed to spawn structure at ",{"score":{"name":"#pos.x","objective":"twvp.temp"}}," ~ ",{"score":{"name":"#pos.z","objective":"twvp.temp"}},". Terrain level: ",{"score":{"name":"#invalid_terrain","objective":"twvp.temp"}}]

execute if score #invalid_terrain twvp.temp matches ..-1 run function thewii:vp_library/generation/struct_gen/spawn_struct