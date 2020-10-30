#> vplib:click_detection/v1/villager/prepare

# Set ID
execute unless score @s vplib.id matches 1.. store result score @s vplib.id run scoreboard players add #global_id vplib.data 1

# Set default click precision
execute unless score @s vplib.clk_precis matches 1.. run scoreboard players set @s vplib.clk_precis 2

# Summon villagers
execute if score @s vplib.clk_precis matches 1.. run summon villager ~ 0 ~ {Team:"vplib.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","vplib.villager","vplib.villager.center","vplib.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score @s vplib.clk_precis matches 2.. run summon villager ~ 0 ~ {Team:"vplib.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","vplib.villager","vplib.villager.front","vplib.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score @s vplib.clk_precis matches 2.. run summon villager ~ 0 ~ {Team:"vplib.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","vplib.villager","vplib.villager.back","vplib.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score @s vplib.clk_precis matches 2.. run summon villager ~ 0 ~ {Team:"vplib.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","vplib.villager","vplib.villager.right","vplib.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score @s vplib.clk_precis matches 2.. run summon villager ~ 0 ~ {Team:"vplib.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","vplib.villager","vplib.villager.left","vplib.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score @s vplib.clk_precis matches 3.. run summon villager ~ 0 ~ {Team:"vplib.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","vplib.villager","vplib.villager.frontright","vplib.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score @s vplib.clk_precis matches 3.. run summon villager ~ 0 ~ {Team:"vplib.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","vplib.villager","vplib.villager.frontleft","vplib.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score @s vplib.clk_precis matches 3.. run summon villager ~ 0 ~ {Team:"vplib.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","vplib.villager","vplib.villager.backright","vplib.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score @s vplib.clk_precis matches 3.. run summon villager ~ 0 ~ {Team:"vplib.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["global.ignore","global.ignore.kill","global.ignore.pos","vplib.villager","vplib.villager.backleft","vplib.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}

# Set ids
scoreboard players operation @e[type=villager,tag=vplib.entity.new,limit=9] vplib.id = @s vplib.id
tag @e[type=villager,tag=vplib.entity.new,limit=9] remove vplib.entity.new

# Set player tag
tag @s add vplib.click.prepared