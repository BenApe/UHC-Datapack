kill @e[tag=coordStand]
summon armor_stand ~ ~ ~ {Tags:["coordStand"],Invisible:true,Invulnerable:true,NoGravity:true,Small:true}
execute as @e[tag=coordStand] at @s run summon leash_knot ~ 0 ~ {Tags:["center"]}
tp @e[tag=coordStand] @e[tag=center, limit=1]
kill @e[tag=center]
execute as @e[tag=coordStand] at @s run worldborder center ~ ~
execute as @e[tag=coordStand] at @s run setworldspawn ~ ~ ~