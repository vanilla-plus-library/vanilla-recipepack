scoreboard players operation #id twvp.temp = @s twvp.id
execute as @e[type=villager,tag=twvp.villager] if score @s twvp.id = #id twvp.temp run tag @s add twvp.villager.matched

execute anchored eyes positioned ^ ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=villager,tag=twvp.villager.matched,tag=twvp.villager_front] ^ ^ ^0.85
execute anchored eyes positioned ^ ^ ^ positioned ~ ~-1 ~ run tp @e[type=villager,tag=twvp.villager.matched,tag=twvp.villager_center] ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=villager,tag=twvp.villager.matched,tag=twvp.villager_back] ^ ^ ^-0.85
execute anchored eyes positioned ^-0.6 ^ ^ positioned ~ ~-1 ~ run tp @e[type=villager,tag=twvp.villager.matched,tag=twvp.villager_right] ~ ~ ~
execute anchored eyes positioned ^0.6 ^ ^ positioned ~ ~-1 ~ run tp @e[type=villager,tag=twvp.villager.matched,tag=twvp.villager_left] ~ ~ ~
execute anchored eyes positioned ^-0.6 ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=villager,tag=twvp.villager.matched,tag=twvp.villager_frontright] ^ ^ ^0.85
execute anchored eyes positioned ^0.6 ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=villager,tag=twvp.villager.matched,tag=twvp.villager_frontleft] ^ ^ ^0.85
execute anchored eyes positioned ^-0.6 ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=villager,tag=twvp.villager.matched,tag=twvp.villager_backright] ^ ^ ^-0.85
execute anchored eyes positioned ^0.6 ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=villager,tag=twvp.villager.matched,tag=twvp.villager_backleft] ^ ^ ^-0.85

execute unless entity @e[type=villager,tag=twvp.villager.matched] run function thewii:vp_library/villager/prepare

tag @e[type=villager,tag=twvp.villager.matched,limit=9] remove twvp.villager.matched