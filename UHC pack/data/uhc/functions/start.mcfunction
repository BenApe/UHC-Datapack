# All the commands needed to start the game
execute at @a[scores={start=1..}] run scoreboard players reset @a[scores={start=1..}] start

# Reset anything
    gamemode survival @a
    gamerule naturalRegeneration true
    weather clear
    kill @e[type=item,]
    clear @a
    effect clear @a
    difficulty peaceful
    difficulty hard

# Scoreboard initialization
    scoreboard objectives add Timer minecraft.custom:minecraft.play_one_minute
    scoreboard players reset @a Timer
    scoreboard objectives add HP health
    scoreboard players reset @a HP
    scoreboard objectives setdisplay belowName HP
    scoreboard objectives add Kills playerKillCount
    scoreboard players reset @a Kills
    scoreboard objectives setdisplay sidebar Kills
    scoreboard objectives add Deaths deathCount
    scoreboard players reset @a Deaths
    worldborder set 1000

# Player effects
    effect give @a regeneration 9999 255 true
    effect give @a resistance 9999 255 true
    effect give @a slowness 9999 255 true
    effect give @a jump_boost 9999 128 true
    effect give @a weakness 9999 255 true
    effect give @a blindness 9999 1 true

# Place all players on the same team during the grace period so they can't damage each other
    team add Grace
    team join Grace @a
    team modify Grace friendlyFire false

# Give players starting items
    give @a gold_ingot 8
    give @a compass
    give @a oak_log 3
    time set 0

execute as @e[tag=coordStand] at @s run spreadplayers ~ ~ 400 500 false @a
tellraw @a ["",{"text":"+~------ GAME INFO: ------~+","bold":true,"color":"gold"},"\n",{"text":"- Grace period lasts 10 minutes. During the grace period, you cannot attack other players.","color":"white"},"\n",{"text":"- Once the grace period is up, you will be able to attack other players and you will not be able to regenerate health.","color":"white"},"\n",{"text":"- The border will start shrinking 20 minutes after the game starts. The border shrinks at a rate of 0.5 blocks/second.","color":"white"},"\n",{"text":"- When a player dies, they will drop 2 golden apples.","color":"white"}]