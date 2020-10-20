# From: '#vplib:<module>/api/users'
# How to use: The dependent datapack needs to have this function inside their namespace, you
# can rename it, place wherever you want as long as you refer it in the module user function tag. 
# An user can refer to a single function from multiple modules tags, this system provides a way
# to only uninstall a module if there are no active users.

# Increase user score
scoreboard players add #users vpcr.temp 1