# Prepare
execute unless entity @s[tag=twvp.prepared_villager] run function thewii:vp_library/click_detections/villager/prepare

# Teleport
execute if entity @s[tag=twvp.prepared_villager] run function thewii:vp_library/click_detections/villager/teleport