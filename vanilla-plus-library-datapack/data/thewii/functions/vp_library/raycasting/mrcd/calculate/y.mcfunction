## (x-x1)/x0=(y-y1)/y0=(z-z1)/z0
## y=#target_y
## y0!=0
### x=(#target_y-y1)x0/y0+x1
### z=(#target_y-y1)z0/y0+z1
## y0=0

## Line equation: (x-x1)/x0=(y-y1)/y0=(z-z1)/z0
## Plane equation: y=#target_y
# Calculate the intersection point coordinate
## if y0!=0
### The equation can be arranged to: x=(#target_y-y1)x0/y0+x1
### The equation can be arranged to: z=(#target_y-y1)z0/y0+z1
## if y0=0, no intersection point


# x
execute store result score #target_x twvp.temp run scoreboard players get #target_y twvp.temp
scoreboard players operation #target_x twvp.temp -= #block_y twvp.temp
scoreboard players operation #target_x twvp.temp *= @s twvp.rx
scoreboard players operation #target_x twvp.temp /= @s twvp.ry
scoreboard players operation #target_x twvp.temp += #block_x twvp.temp

# y

# z
execute store result score #target_z twvp.temp run scoreboard players get #target_y twvp.temp
scoreboard players operation #target_z twvp.temp -= #block_y twvp.temp
scoreboard players operation #target_z twvp.temp *= @s twvp.rz
scoreboard players operation #target_z twvp.temp /= @s twvp.ry
scoreboard players operation #target_z twvp.temp += #block_z twvp.temp


