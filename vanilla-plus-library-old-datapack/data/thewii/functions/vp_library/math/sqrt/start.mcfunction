# Initialize value
scoreboard players set #output twvp.temp 0
scoreboard players set #increment twvp.temp 32768

scoreboard players operation #input twvp.temp *= #scale_factor twvp.temp

# Execute recursive function
function thewii:vp_library/math/sqrt/loop

# Reset input
scoreboard players operation #input twvp.temp /= #scale_factor twvp.temp

tellraw @s[tag=twvp.debug] ["[Square Root] Scale factor: ",{"score":{"name":"#scale_factor","objective": "twvp.temp"}},", Input: ",{"score":{"name":"#input","objective": "twvp.temp"}},", Output: ",{"score":{"name":"#output","objective": "twvp.temp"}}]