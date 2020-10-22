#> vplib:math/v1/lcg/ranged

scoreboard players operation #range vplib.math = #max vplib.math
scoreboard players operation #range vplib.math -= #min vplib.math
scoreboard players add #range vplib.math 1

scoreboard players operation #lcg vplib.math *= #lcg.constant vplib.math
scoreboard players add #lcg vplib.math 12345
scoreboard players operation #result vplib.math = #lcg vplib.math

scoreboard players operation #result vplib.math %= #range vplib.math
scoreboard players operation #result vplib.math += #min vplib.math