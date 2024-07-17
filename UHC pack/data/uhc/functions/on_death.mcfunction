# When a player dies, place 2 gapples where they died, set them to spectator mode, remove the "dead" status from them, then play a lightning sound effect
execute at @a[scores={Deaths=1}] run summon item ~ ~ ~ {Item:{id:"minecraft:golden_apple",Count:2}}
execute at @a[scores={Deaths=1}] run gamemode spectator @a[scores={Deaths=1}]
execute at @a[scores={Deaths=1}] run scoreboard players reset @a[scores={Deaths=1}] Deaths
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2000 1