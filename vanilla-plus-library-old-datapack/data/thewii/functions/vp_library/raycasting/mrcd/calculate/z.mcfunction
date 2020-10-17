## (x-x1)/x0=(y-y1)/y0=(z-z1)/z0
## z=#target_z
## 0!=0
### x=(#target_z-z1)x0/z0+x1
### y=(#target_z-z1)y0/z0+y1
## 0=0

## Line equation: (x-x1)/x0=(y-y1)/y0=(z-z1)/z0
## Plane equation: z=#target_z
# Calculate the intersection point coordinate
## if z0!=0
### The equation can be arranged to: x=(#target_z-z1)x0/z0+x1
### The equation can be arranged to: y=(#target_z-z1)y0/z0+y1
## if z0=0, no intersection point



# x
execute store result score #target_x twvp.temp run scoreboard players get #target_z twvp.temp
scoreboard players operation #target_x twvp.temp -= #block_z twvp.temp
scoreboard players operation #target_x twvp.temp *= @s twvp.rx
scoreboard players operation #target_x twvp.temp /= @s twvp.rz
scoreboard players operation #target_x twvp.temp += #block_x twvp.temp

# y
execute store result score #target_y twvp.temp run scoreboard players get #target_z twvp.temp
scoreboard players operation #target_y twvp.temp -= #block_z twvp.temp
scoreboard players operation #target_y twvp.temp *= @s twvp.ry
scoreboard players operation #target_y twvp.temp /= @s twvp.rz
scoreboard players operation #target_y twvp.temp += #block_y twvp.temp

# z

