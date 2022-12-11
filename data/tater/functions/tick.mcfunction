# Damage in water
execute at @a run execute if block ~ ~ ~ minecraft:water run function tater:water_effect
# Damage in cauldron
execute at @a run execute if block ~ ~ ~ minecraft:water_cauldron run function tater:water_effect

# Destroy boats
execute at @e[type=minecraft:boat] run execute if block ~ ~ ~ minecraft:water run kill @e[type=minecraft:boat,distance=..1]

# Splash water
execute at @e[type=minecraft:potion,limit=1,sort=nearest, nbt={Item:{id:"minecraft:splash_potion",tag:{Potion:"minecraft:water"}}}] run summon minecraft:potion ~ ~ ~ {Item:{id:"minecraft:splash_potion",tag:{CustomPotionEffects:[{Id:7,Amplifier:1,ShowParticles:false}]}}} 

# Damage rain // Always at the end bc recursive function
execute as @a at @s if predicate tater:rain run function tater:detecting_rain
