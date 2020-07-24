# Rng the X displacement
scoreboard players set #range vp_math 16
function vp_library:math/lcg/simplified_rng
scoreboard players operation #displace_x vp_temp = #result vp_math

# Rng the Z displacement
scoreboard players set #range vp_math 16
function vp_library:math/lcg/simplified_rng
scoreboard players operation #displace_z vp_temp = #result vp_math

# Displace
function vp_library:generation/struct_gen/displace_x