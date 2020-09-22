# Set default click precision
execute unless score @s twvp.clk_precis matches 1.. run scoreboard players set @s twvp.clk_precis 2

# Summon villagers
execute if score @s twvp.clk_precis matches 1.. run summon villager ~ 0 ~ {Team:"twvp.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["twvp.villager","twvp.villager.center","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score @s twvp.clk_precis matches 2.. run summon villager ~ 0 ~ {Team:"twvp.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["twvp.villager","twvp.villager.front","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score @s twvp.clk_precis matches 2.. run summon villager ~ 0 ~ {Team:"twvp.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["twvp.villager","twvp.villager.back","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score @s twvp.clk_precis matches 2.. run summon villager ~ 0 ~ {Team:"twvp.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["twvp.villager","twvp.villager.right","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score @s twvp.clk_precis matches 2.. run summon villager ~ 0 ~ {Team:"twvp.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["twvp.villager","twvp.villager.left","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score @s twvp.clk_precis matches 3.. run summon villager ~ 0 ~ {Team:"twvp.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["twvp.villager","twvp.villager.frontright","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score @s twvp.clk_precis matches 3.. run summon villager ~ 0 ~ {Team:"twvp.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["twvp.villager","twvp.villager.frontleft","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score @s twvp.clk_precis matches 3.. run summon villager ~ 0 ~ {Team:"twvp.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["twvp.villager","twvp.villager.backright","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score @s twvp.clk_precis matches 3.. run summon villager ~ 0 ~ {Team:"twvp.nocollision",NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["twvp.villager","twvp.villager.backleft","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}

# Set ids
scoreboard players operation @e[type=villager,tag=twvp.entity.new,limit=9] twvp.id = @s twvp.id
tag @e[type=villager,tag=twvp.entity.new,limit=9] remove twvp.entity.new

# Set player tag
tag @s add twvp.prepared_villager