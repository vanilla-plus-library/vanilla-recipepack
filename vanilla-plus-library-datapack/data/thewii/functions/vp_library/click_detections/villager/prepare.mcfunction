scoreboard players set #click_precision twvp.temp 2
execute if entity @s[tag=twvp.player.detect_low] run scoreboard players set #click_precision twvp.temp 1
execute if entity @s[tag=twvp.player.detect_very_high] run scoreboard players set #click_precision twvp.temp 3

execute if score #click_precision twvp.temp matches 2.. run summon villager ~ 0 ~ {Team:"twvp.nocollide",NoAI:1,Silent:1,Invulnerable:1,Tags:["twvp.villager","twvp.villager_front","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score #click_precision twvp.temp matches 1.. run summon villager ~ 0 ~ {Team:"twvp.nocollide",NoAI:1,Silent:1,Invulnerable:1,Tags:["twvp.villager","twvp.villager_center","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score #click_precision twvp.temp matches 2.. run summon villager ~ 0 ~ {Team:"twvp.nocollide",NoAI:1,Silent:1,Invulnerable:1,Tags:["twvp.villager","twvp.villager_back","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score #click_precision twvp.temp matches 2.. run summon villager ~ 0 ~ {Team:"twvp.nocollide",NoAI:1,Silent:1,Invulnerable:1,Tags:["twvp.villager","twvp.villager_right","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score #click_precision twvp.temp matches 2.. run summon villager ~ 0 ~ {Team:"twvp.nocollide",NoAI:1,Silent:1,Invulnerable:1,Tags:["twvp.villager","twvp.villager_left","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score #click_precision twvp.temp matches 3.. run summon villager ~ 0 ~ {Team:"twvp.nocollide",NoAI:1,Silent:1,Invulnerable:1,Tags:["twvp.villager","twvp.villager_frontright","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score #click_precision twvp.temp matches 3.. run summon villager ~ 0 ~ {Team:"twvp.nocollide",NoAI:1,Silent:1,Invulnerable:1,Tags:["twvp.villager","twvp.villager_frontleft","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score #click_precision twvp.temp matches 3.. run summon villager ~ 0 ~ {Team:"twvp.nocollide",NoAI:1,Silent:1,Invulnerable:1,Tags:["twvp.villager","twvp.villager_backright","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}
execute if score #click_precision twvp.temp matches 3.. run summon villager ~ 0 ~ {Team:"twvp.nocollide",NoAI:1,Silent:1,Invulnerable:1,Tags:["twvp.villager","twvp.villager_backleft","twvp.entity.new"],ActiveEffects:[{Id:14b,Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:1000000,Amplifier:0b}]}

scoreboard players operation @e[type=villager,tag=twvp.entity.new,limit=9] twvp.id = @s twvp.id
tag @e[type=villager,tag=twvp.entity.new,limit=9] remove twvp.entity.new

tag @s add twvp.villager_prepared

tag @s remove twvp.player.detect_high
tag @s remove twvp.player.detect_very_high