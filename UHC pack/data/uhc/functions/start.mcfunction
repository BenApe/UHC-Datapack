#gamerule sendCommandFeedback false
gamemode survival @a
scoreboard objectives add Timer minecraft.custom:minecraft.play_one_minute
scoreboard players reset @a Timer
scoreboard objectives setdisplay sidebar Timer
scoreboard players add Dummy Timer 0
scoreboard objectives add HP health
scoreboard players reset @a HP
scoreboard objectives setdisplay belowName HP
scoreboard objectives add Kills playerKillCount
scoreboard players reset @a Kills
scoreboard objectives setdisplay sidebar Kills
scoreboard objectives add Deaths deathCount
scoreboard players reset @a Deaths
worldborder set 1000
effect clear @a
effect give @a regeneration 9999 255 true
effect give @a resistance 9999 255 true
effect give @a slowness 9999 255 true
effect give @a jump_boost 9999 128 true
effect give @a weakness 9999 255 true
effect give @a blindness 9999 1 true
team add Grace
team join Grace @a
team modify Grace friendlyFire false
gamerule naturalRegeneration true
clear @a
give @a gold_ingot 8
give @a compass
give @a oak_log 3
time set 0
weather clear
execute as @e[tag=coordStand] at @s run spreadplayers ~ ~ 400 500 false @a
kill @e[type=item]
tellraw @a {"text": "GAME INFO:", "bold": true, "color": "#eef132"}
tellraw @a {"text": "- Grace period lasts 10 minutes. During the grace period, you cannot attack other players."}
tellraw @a {"text": "- Once the grace period is up, you will be able to attack other players and you will not be able to regenerate health."}
tellraw @a {"text": "- The border will start shrinking 20 minutes after the game starts. The border shrinks at a rate of 0.5 blocks/second."}
tellraw @a {"text": "- When a player dies, they will drop 2 golden apples."}