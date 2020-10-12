## (x-x1)/x0=(y-y1)/y0=(z-z1)/z0
## x=#target_x
## x0!=0
### y=(#target_x-x1)y0/x0+y1
### z=(#target_x-x1)z0/x0+z1
## x0=0

## Line equation: (x-x1)/x0=(y-y1)/y0=(z-z1)/z0
## Plane equation: x=#target_x
# Calculate the intersection point coordinate
## if x0!=0
### The equation can be arranged to: y=(#target_x-x1)y0/x0+y1
### The equation can be arranged to: z=(#target_x-x1)z0/x0+z1
## if x0=0, no intersection point


# x


# y
execute store result score #target_y twvp.temp run scoreboard players get #target_x twvp.temp
scoreboard players operation #target_y twvp.temp -= #block_x twvp.temp
scoreboard players operation #target_y twvp.temp *= @s twvp.ry
scoreboard players operation #target_y twvp.temp /= @s twvp.rx
scoreboard players operation #target_y twvp.temp += #block_y twvp.temp

# z
execute store result score #target_z twvp.temp run scoreboard players get #target_x twvp.temp
scoreboard players operation #target_z twvp.temp -= #block_x twvp.temp
scoreboard players operation #target_z twvp.temp *= @s twvp.rz
scoreboard players operation #target_z twvp.temp /= @s twvp.rx
scoreboard players operation #target_z twvp.temp += #block_z twvp.temp


