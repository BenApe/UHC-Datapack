# Teleports the player to the surface
execute as @a[scores={top=1..}] run spreadplayers ~ ~ 0 1 false @a[scores={top=1}]
title @a[scores={top=1..}] actionbar {"text":"If you didn't get sent to the top, there is either water or lava above you","color":"dark_red"}
execute at @a[scores={top=1..}] run scoreboard players reset @a[scores={top=1..}] top