# Save player's y pos into the score
execute store result score @a y run data get entity @p Pos[1]
execute as @a at @p run function tater:rec_rain_detector
# Give effect
execute if score @p y matches 320 run function tater:rain_effect
