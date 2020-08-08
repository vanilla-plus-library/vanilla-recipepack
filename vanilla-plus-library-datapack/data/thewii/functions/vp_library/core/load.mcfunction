# Semantic Versioning
# 02 03 04 -> 2.3.4
#  |  |  |_ Minor changes,bug fixes, grammar fixes.
#  |  |____ Improvements, new features, critical bug fixes.
#  |_______ Overhauls, many new features, complete changes.


# Reset temporary objective
scoreboard players reset * twvp.temp

# Lantern Load
scoreboard players set #thewii.vplib.core load 000600

# Update
execute if data storage thewii:vp_library/data version unless data storage thewii:vp_library/data {version:"0.6 alpha"} run function thewii:vp_library/core/update

# Version
data modify storage thewii:vp_library/data version set value "0.6 alpha"