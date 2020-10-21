#> vplib:math/v1/lcg/ranged

scoreboard players operation #range vpcr.math = #max vpcr.math
scoreboard players operation #range vpcr.math -= #min vpcr.math
scoreboard players add #range vpcr.math 1

scoreboard players operation #lcg vpcr.math *= #lcg.constant vpcr.math
scoreboard players add #lcg vpcr.math 12345
scoreboard players operation #result vpcr.math = #lcg vpcr.math

scoreboard players operation #result vpcr.math %= #range vpcr.math
scoreboard players operation #result vpcr.math += #min vpcr.math