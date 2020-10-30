#> vplib:click_detection/v1/villager/teleport

# Match villagers
scoreboard players operation #id vplib.temp = @s vplib.id
execute as @e[type=minecraft:villager,tag=vplib.villager] if score @s vplib.id = #id vplib.temp run tag @s add vplib.villager.matched

# Teleport matched villagers
execute if score @s vplib.clk_precis matches 1.. anchored eyes positioned ^ ^ ^ positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=vplib.villager.matched,tag=vplib.villager.center,limit=1] ~ ~ ~
execute if score @s vplib.clk_precis matches 2.. anchored eyes positioned ^ ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=vplib.villager.matched,tag=vplib.villager.front,limit=1] ^ ^ ^0.85
execute if score @s vplib.clk_precis matches 2.. anchored eyes positioned ^ ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=vplib.villager.matched,tag=vplib.villager.back,limit=1] ^ ^ ^-0.85
execute if score @s vplib.clk_precis matches 2.. anchored eyes positioned ^-0.6 ^ ^ positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=vplib.villager.matched,tag=vplib.villager.right,limit=1] ~ ~ ~
execute if score @s vplib.clk_precis matches 2.. anchored eyes positioned ^0.6 ^ ^ positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=vplib.villager.matched,tag=vplib.villager.left,limit=1] ~ ~ ~
execute if score @s vplib.clk_precis matches 3.. anchored eyes positioned ^-0.6 ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=vplib.villager.matched,tag=vplib.villager.frontright,limit=1] ^ ^ ^0.85
execute if score @s vplib.clk_precis matches 3.. anchored eyes positioned ^0.6 ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=vplib.villager.matched,tag=vplib.villager.frontleft,limit=1] ^ ^ ^0.85
execute if score @s vplib.clk_precis matches 3.. anchored eyes positioned ^-0.6 ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=vplib.villager.matched,tag=vplib.villager.backright,limit=1] ^ ^ ^-0.85
execute if score @s vplib.clk_precis matches 3.. anchored eyes positioned ^0.6 ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=minecraft:villager,tag=vplib.villager.matched,tag=vplib.villager.backleft,limit=1] ^ ^ ^-0.85

# If villagers were killed
execute unless entity @e[type=minecraft:villager,tag=vplib.villager.matched,limit=1] run function vplib:click_detection/v1/villager/prepare

# Remove matched tags
tag @e[type=minecraft:villager,tag=vplib.villager.matched,limit=9] remove vplib.villager.matched