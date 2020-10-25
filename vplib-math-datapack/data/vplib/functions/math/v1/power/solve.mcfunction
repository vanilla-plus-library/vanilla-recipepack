#> vplib:math/v1/power/solve

# Set output
scoreboard players set #output vplib.math 1

# Set loop
scoreboard players operation #loop vplib.temp = #exponent vplib.math
execute if score #loop vplib.temp matches ..-1 run scoreboard players operation #loop vplib.temp *= #-1 vplib.math

# Scale factor if exponent is negative
execute unless score #scale_factor vplib.math matches 1.. run scoreboard players set #scale_factor vplib.math 1000
execute if score #exponent vplib.math matches ..-1 run scoreboard players operation #output vplib.math *= #scale_factor vplib.math


# Loop
tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Starting power loop. Iterations: ","color":"white","bold":false},{"score":{"name":"#loop","objective": "vplib.temp"},"color":"white","bold":false},{"text":" | Scale factor: ","color":"white","bold":false},{"score":{"name":"#scale_factor","objective": "vplib.math"},"color":"white","bold":false}]
execute if score #loop vplib.temp matches 1.. run function vplib:math/v1/power/loop

# DEBUG Message
tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Input: ","color":"white","bold":false},{"score":{"name":"#input","objective": "vplib.math"},"color":"white","bold":false},{"text":" | Exponent: ","color":"white","bold":false},{"score":{"name":"#exponent","objective": "vplib.math"},"color":"white","bold":false},{"text":" | Output: ","color":"white","bold":false},{"score":{"name":"#output","objective": "vplib.math"},"color":"white","bold":false}]