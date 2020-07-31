# Rng the X displacement
scoreboard players set #range twvp.math 16
function thewii:vp_library/math/lcg/simplified_rng
scoreboard players operation #displace_x twvp.temp = #result twvp.math

# Rng the Z displacement
scoreboard players set #range twvp.math 16
function thewii:vp_library/math/lcg/simplified_rng
scoreboard players operation #displace_z twvp.temp = #result twvp.math

# Displace
function thewii:vp_library/generation/struct_gen/displace_x