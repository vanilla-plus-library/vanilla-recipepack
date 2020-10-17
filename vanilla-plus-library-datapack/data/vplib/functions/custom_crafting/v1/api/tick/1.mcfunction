#> vplib:custom_crafting/v1/api/tick/1
# Name: Tick/1
# Description: Run module tick
# From: #thewii:vp_library/custom_crafting/api/tick/1

# Run 'tick/1' if lib version matches
execute if data storage vplib:data modules."custom_crafting".version{current: 1} run function vplib:custom_crafting/v1/tick/1