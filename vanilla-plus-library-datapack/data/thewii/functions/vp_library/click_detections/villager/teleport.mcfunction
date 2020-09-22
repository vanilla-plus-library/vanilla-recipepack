# Match villagers
scoreboard players operation #id twvp.temp = @s twvp.id
execute as @e[type=minecraft:villager,tag=twvp.villager] if score @s twvp.id = #id twvp.temp run tag @s add twvp.villager.matched

# Teleport matched villagers
execute if score @s twvp.clk_precis matches 1.. anchored eyes positioned ^ ^ ^ positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=twvp.villager.matched,tag=twvp.villager.center,limit=1] ~ ~ ~
execute if score @s twvp.clk_precis matches 2.. anchored eyes positioned ^ ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=twvp.villager.matched,tag=twvp.villager.front,limit=1] ^ ^ ^0.85
execute if score @s twvp.clk_precis matches 2.. anchored eyes positioned ^ ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=twvp.villager.matched,tag=twvp.villager.back,limit=1] ^ ^ ^-0.85
execute if score @s twvp.clk_precis matches 2.. anchored eyes positioned ^-0.6 ^ ^ positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=twvp.villager.matched,tag=twvp.villager.right,limit=1] ~ ~ ~
execute if score @s twvp.clk_precis matches 2.. anchored eyes positioned ^0.6 ^ ^ positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=twvp.villager.matched,tag=twvp.villager.left,limit=1] ~ ~ ~
execute if score @s twvp.clk_precis matches 3.. anchored eyes positioned ^-0.6 ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=twvp.villager.matched,tag=twvp.villager.frontright,limit=1] ^ ^ ^0.85
execute if score @s twvp.clk_precis matches 3.. anchored eyes positioned ^0.6 ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=twvp.villager.matched,tag=twvp.villager.frontleft,limit=1] ^ ^ ^0.85
execute if score @s twvp.clk_precis matches 3.. anchored eyes positioned ^-0.6 ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=twvp.villager.matched,tag=twvp.villager.backright,limit=1] ^ ^ ^-0.85
execute if score @s twvp.clk_precis matches 3.. anchored eyes positioned ^0.6 ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=twvp.villager.matched,tag=twvp.villager.backleft,limit=1] ^ ^ ^-0.85

# If villagers were killed
execute unless entity @e[type=minecraft:villager,tag=twvp.villager.matched,limit=1] run function thewii:vp_library/villager/prepare

# Remove matched tags
tag @e[type=minecraft:villager,tag=twvp.villager.matched,limit=9] remove twvp.villager.matched