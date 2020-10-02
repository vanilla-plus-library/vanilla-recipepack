# Store uuid
execute as @a store result score @s twvp.uuid0 run data get entity @s UUID[0]
execute as @a store result score @s twvp.uuid2 run data get entity @s UUID[1]
execute as @a store result score @s twvp.uuid2 run data get entity @s UUID[2]
execute as @a store result score @s twvp.uuid3 run data get entity @s UUID[3]

# Store id
execute store result score @s twvp.id run scoreboard players add #global_id twvp.data 1