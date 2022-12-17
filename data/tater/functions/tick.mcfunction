# Damage in water
execute at @a[gamemode=!creative,gamemode=!spectator] run execute if block ~ ~ ~ minecraft:water run function tater:water_effect
# Damage in cauldron
execute at @a[gamemode=!creative,gamemode=!spectator] run execute if block ~ ~ ~ minecraft:water_cauldron run function tater:water_effect

# Destroy boats
execute at @e[type=minecraft:boat] run execute if block ~ ~ ~ minecraft:water run kill @e[type=minecraft:boat,distance=..1]

# Damage rain // Always at the end bc recursive function
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate tater:rain run function tater:detecting_rain
