#> vplib:math/v1/sqrt/solve

# Initialize value
scoreboard players set #output vplib.math 0
scoreboard players set #increment vplib.math 32768

scoreboard players operation #input vplib.math *= #scale_factor vplib.math

# Execute recursive function
function vplib:math/v1/sqrt/loop

# Reset input
scoreboard players operation #input vplib.math /= #scale_factor vplib.math

tellraw @s[tag=vplib.debug] ["[Square Root] Scale factor: ",{"score":{"name":"#scale_factor","objective": "vplib.math"}},", Input: ",{"score":{"name":"#input","objective": "vplib.math"}},", Output: ",{"score":{"name":"#output","objective": "vplib.math"}}]