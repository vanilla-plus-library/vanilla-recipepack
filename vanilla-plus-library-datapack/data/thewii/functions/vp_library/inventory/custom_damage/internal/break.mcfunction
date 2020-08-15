# Call common function tag
function #thewii:vp_library/inventory/tool_broken

# Break following the right method
execute if score #tool.keep_broken twvp.temp matches 1 run data modify storage thewii:vp_library/temp damageTool.tag.ctc.tool.broken set value 1b
execute unless score #tool.keep_broken twvp.temp matches 1 run data remove storage thewii:vp_library/temp damageTool
