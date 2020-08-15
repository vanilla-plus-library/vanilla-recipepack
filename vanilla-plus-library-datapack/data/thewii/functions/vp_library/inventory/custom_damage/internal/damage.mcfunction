# Get item damage and durability and move to scores
execute store result score #tool.damage twvp.temp run data get storage thewii:vp_library/twvp.temp damageTool.tag.ctc.tool.damage
execute store result score #tool.durability twvp.temp run data get storage thewii:vp_library/twvp.temp damageTool.tag.ctc.tool.durability

# Get breaking method (if 'tag.ctc.tool.broken' exists the tool breaks like elytra)
execute store result score #tool.keep_broken twvp.temp if data storage thewii:vp_library/twvp.temp damageTool.tag.ctc.tool.broken

# Get broken boolean (value of boolean 'tag.ctc.tool.broken')
execute store result score #tool.broken twvp.temp run data get storage thewii:vp_library/twvp.temp damageTool.tag.ctc.tool.broken

# Get unbreaking/unbreakable
execute unless data storage thewii:vp_library/temp damageTool.tag.Enchantments[{id:"minecraft:unbreaking"}] run scoreboard players set #tool.unbreaking twvp.temp 0
execute store result score #tool.unbreaking twvp.temp run data get storage thewii:vp_library/temp damageTool.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl

execute store result score #tool.unbreakable twvp.temp run data get storage thewii:autominer/temp SelectedItem.tag.Unbreakable
execute unless score #tool.unbreakable twvp.temp matches 0 run scoreboard players set #tool.unbreakable twvm.tool 1


# Count damage
execute unless score #vplib.inv.rolls twvp.temp matches 0.. run scoreboard players set #vplib.inv.rolls twvp.temp 1

scoreboard players set #tool.damage_count twvp.temp 0
execute unless score #tool.unbreakable twvp.temp matches 1 if score #vplib.inv.rolls twvp.temp matches 1.. run function thewii:vp_library/inventory/custom_damage/internal/calculate_loop

scoreboard players operation #tool.damage twvp.temp += #tool.damage_count twvp.temp
execute unless score #tool.damage_count twvp.temp matches 0 store result storage thewii:vp_library/temp damageTool.tag.ctc.tool.damage int 1 run scoreboard players get #tool.damage twvp.temp


# Calculate damage bar and store to 'tag.Damage'
function thewii:vp_library/inventory/custom_damage/internal/model_durability
scoreboard players operation #tool.bar_damage twvp.temp = #model.durability twvp.temp
scoreboard players operation #tool.bar_damage twvp.temp *= #tool.damage twvp.temp
scoreboard players operation #tool.bar_damage twvp.temp /= #tool.durability twvp.temp

execute if score #tool.bar_damage twvp.temp matches 0 if score #tool.damage twvp.temp matches 1.. run scoreboard players set #tool.bar_damage twvp.temp 1

scoreboard players remove #model.durability twvp.temp 2
scoreboard players operation #tool.bar_damage twvp.temp < #model.durability twvp.temp

execute store result storage thewii:vp_library/temp damageTool.tag.Damage int 1 run scoreboard players get #tool.bar_damage twvp.temp


# Modify damage lore (always the lore's last line)
scoreboard players operation #tool.lore_damage twvp.temp = #tool.durability twvp.temp
scoreboard players operation #tool.lore_damage twvp.temp -= #tool.damage twvp.temp

data remove block 29999983 0 4321 Text1
data modify block 29999983 0 4321 Text1 set value '[{"text":"Uses: ","color":"gray","italic":false},{"score":{"name":"#tool.lore_damage","objective":"twvp.temp"}},{"text":"/"},{"score":{"name":"#tool.durability","objective":"twvp.temp"}}]'

execute unless data storage thewii:vp_library/temp damageTool.tag.display.Lore run data modify storage thewii:vp_library/temp damageTool.tag.display.Lore append value '{"text":"Uses"}'
data modify storage thewii:vp_library/temp damageTool.tag.display.Lore[-1] set from block 29999983 0 4321 Text1


# Break tool
execute if score #tool.damage twvp.temp >= #tool.durability twvp.temp run function thewii:vp_library/inventory/custom_damage/internal/break 