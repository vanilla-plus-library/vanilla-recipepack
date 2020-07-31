scoreboard players operation #id twvp.temp = @s twvp.id
execute as @e[type=villager,tag=twvp.villager] if score @s twvp.id = #id twvp.temp run tag @s add twvp.villager.matched

tp @e[type=villager,tag=twvp.villager.matched] ~ ~-1000 ~
kill @e[type=villager,tag=twvp.villager.matched]

tag @s remove twvp.villager_prepared