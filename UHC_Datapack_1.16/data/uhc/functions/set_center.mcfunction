# Sets the world spawn point and world border center at the player's current x and y coordinates
execute at @a[scores={set_center=1..}] run scoreboard players reset @a[scores={set_center=1..}] set_center
kill @e[tag=coordStand]
summon armor_stand ~ ~ ~ {Tags:["coordStand"],Invisible:true,Invulnerable:true,NoGravity:true,Small:true}
execute as @e[tag=coordStand] at @s run summon leash_knot ~ 0 ~ {Tags:["center"]}
tp @e[tag=coordStand] @e[tag=center, limit=1]
kill @e[tag=center]
execute as @e[tag=coordStand] at @s run worldborder center ~ ~
execute as @e[tag=coordStand] at @s run setworldspawn ~ ~ ~