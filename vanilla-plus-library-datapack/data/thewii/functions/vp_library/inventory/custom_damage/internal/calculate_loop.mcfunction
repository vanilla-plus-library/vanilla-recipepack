# Add the damage score respecting unbreaking enchantment and modify item data
execute if score #tool.unbreaking twvp.temp matches 0 run scoreboard players add #tool.damage_count twvp.temp 1
execute if score #tool.unbreaking twvp.temp matches ..1 if predicate thewii:vp_library/tool/unbreaking_1 run scoreboard players add #tool.damage_count twvp.temp 1
execute if score #tool.unbreaking twvp.temp matches 2 if predicate thewii:vp_library/tool/unbreaking_2 run scoreboard players add #tool.damage_count twvp.temp 1
execute if score #tool.unbreaking twvp.temp matches 3.. if predicate thewii:vp_library/tool/unbreaking_3 run scoreboard players add #tool.damage_count twvp.temp 1

# Loop
scoreboard players remove #vplib.inv.rolls twvp.temp 1
execute if score #vplib.inv.rolls twvp.temp matches 1.. run function thewii:vp_library/inventory/custom_damage/calculate_loop
