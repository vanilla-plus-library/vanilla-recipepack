# Semantic Versioning
#  020304 -> 2 . 3 . 4
#            |   |   |_ Minor changes, bug fixes, grammar fixes.
#            |   |_____ Improvements, new features, critical bug fixes.
#            |_________ Overhauls, many new features, complete changes.


# Reset temporary objective
scoreboard players reset * twvp.temp

# Lantern Load
scoreboard players set #vplib.core thewii.load 010000

# Update
execute if data storage thewii:vp_library/data version unless data storage thewii:vp_library/data {version:"1.0 alpha"} run function thewii:vp_library/core/update

# Version
data modify storage thewii:vp_library/data version set value "1.0 alpha"