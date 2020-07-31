execute unless data storage thewii:vp_library/data modules run function thewii:vp_library/core/install

scoreboard objectives add twvp.id dummy
execute if score $1.16 twvp.data matches 0 as @a store result score @s twvp.id run data get entity @s UUIDMost 0.0000000001
execute if score $1.16 twvp.data matches 1 as @a store result score @s twvp.id run data get entity @s UUID[0]

scoreboard objectives add twvp.coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add twvp.wfoas minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add twvp.villager minecraft.custom:minecraft.talked_to_villager

team add twvp.nocollide "twvp.nocollide"
team modify twvp.nocollide collisionRule never