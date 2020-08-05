# Subtract stack count from drew item count
execute store result score #stack_count twvp.temp run data get block ~ ~ ~ Items[0].Count
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players operation #stack_count twvp.temp -= #item_count twvp.temp