#> vplib:math/v1/core/uninstall

# Clear metadata
data remove storage vplib:data modules.math

# DEBUG Message
tellraw @a[tag=vplib.debug] [{"text":"[Debug]: ","color":"yellow","bold":true},{"text":"Uninstalled Vanilla+ Library: Math v1","color":"white","bold":false}]