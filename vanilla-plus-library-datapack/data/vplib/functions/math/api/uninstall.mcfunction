#> vplib:math/api/uninstall
# Description: Attempt to uninstall module if there are no users.
# How to use: Dependent datapacks might call this function in their uninstallation(if they implemented one).

# Reset score
scoreboard players set #users vpcr.temp 0

# Ask for users to add to the score
function #vplib:math/api/users

# DEBUG Messages
execute if score #users vpcr.temp matches ..0 run tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Uninstalled Vanilla+ Library: Math v1","color":"white","bold":false}]
execute if score #users vpcr.temp matches 1.. run tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Failed to uninstall Vanilla+ Library: Math v1. Active users: ","color":"white","bold":false},{"score":{"name": "#users","objective": "vpcr.temp"},"color":"white","bold":false}]

# Proceed if score is unaffected
execute if score #users vpcr.temp matches ..0 run function #vplib:math/api/uninstall