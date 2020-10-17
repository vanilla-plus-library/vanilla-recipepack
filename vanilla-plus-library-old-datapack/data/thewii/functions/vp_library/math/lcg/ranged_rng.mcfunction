scoreboard players operation #range twvp.math = #max twvp.math
scoreboard players operation #range twvp.math -= #min twvp.math
scoreboard players add #range twvp.math 1

scoreboard players operation #lcg twvp.math *= #lcg.constant twvp.math
scoreboard players add #lcg twvp.math 12345
scoreboard players operation #result twvp.math = #lcg twvp.math

scoreboard players operation #result twvp.math %= #range twvp.math
scoreboard players operation #result twvp.math += #min twvp.math