# Villager
execute as @a[tag=twvp.player.detect_click] at @s run function thewii:vp_library/click_detections/villager/player

execute as @a[gamemode=!spectator,tag=!twvp.player.detect_click,tag=twvp.player.villager_prepared] at @s run function thewii:vp_library/click_detections/villager/remove
execute as @a[gamemode=spectator,tag=twvp.player.villager_prepared] at @s run function thewii:vp_library/click_detections/villager/remove

execute as @a[scores={twvp.villager=-2146473648..}] at @s run function thewii:vp_library/click_detections/villager/talked

# Sticks
execute as @a[scores={twvp.coas=-2147483648..}] run function thewii:vp_library/click_detections/stick/clicked
execute as @a[scores={twvp.wfoas=-2147483648..}] run function thewii:vp_library/click_detections/stick/clicked