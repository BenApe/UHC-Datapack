# Teleports all players into the overworld
execute as @e[tag=coordStand,limit=1] at @s run summon leash_knot ~ 255 ~ {Tags:["center"]}
execute as @e[tag=center,limit=1] at @s run summon armor_stand ~ ~ ~ {Tags:["tpStand"],Invisible:true,Invulnerable:true,NoGravity:true,Small:true}
kill @e[tag=center]
execute at @a[scores={is_in_overworld=1..}] run tp @a[scores={is_in_overworld=1..}] @e[tag=tpStand,limit=1]
execute as @e[tag=tpStand] at @a[scores={is_in_overworld=1..}] run spreadplayers ~ ~ 10 30 false @a[scores={is_in_overworld=1..}]
scoreboard players reset @a is_in_overworld
execute at @a[scores={clear_nether=1..}] run scoreboard players reset @a[scores={clear_nether=1..}] clear_nether
kill @e[tag=tpStand]