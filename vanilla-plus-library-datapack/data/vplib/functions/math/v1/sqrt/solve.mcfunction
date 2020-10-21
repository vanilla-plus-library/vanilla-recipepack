#> vplib:math/v1/sqrt/solve

# Initialize value
scoreboard players set #output vpcr.math 0
scoreboard players set #increment vpcr.math 32768

scoreboard players operation #input vpcr.math *= #scale_factor vpcr.math

# Execute recursive function
function vplib:math/v1/sqrt/loop

# Reset input
scoreboard players operation #input vpcr.math /= #scale_factor vpcr.math

tellraw @s[tag=vplib.debug] ["[Square Root] Scale factor: ",{"score":{"name":"#scale_factor","objective": "vpcr.math"}},", Input: ",{"score":{"name":"#input","objective": "vpcr.math"}},", Output: ",{"score":{"name":"#output","objective": "vpcr.math"}}]