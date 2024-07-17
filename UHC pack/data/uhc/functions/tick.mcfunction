execute if score @r Timer matches 21 run title @a title {"text": "5", "color": "#e60f00"}
execute if score @r Timer matches 41 run title @a title {"text": "4", "color": "#f54f07"}
execute if score @r Timer matches 61 run title @a title {"text": "3", "color": "#f7c705"}
execute if score @r Timer matches 81 run title @a title {"text": "2", "color": "#abf705"}
execute if score @r Timer matches 101 run title @a title {"text": "1", "color": "#22eb10"}
execute if score @r Timer matches 121 run title @a title {"text": "GO!", "color": "#ffffff"}
execute if score @r Timer matches 121 run effect clear @a
execute if score @r Timer matches 121 run effect give @a saturation 12000 255 true
execute if score @r Timer matches 121 run title @a actionbar {"text": "Grace Period Ends in 10 Minutes.", "color": "#48ad29"}
execute if score @r Timer matches 6121 run title @a actionbar {"text": "Grace Period Ends in 5 Minutes.", "color": "#eeff00"}
execute if score @r Timer matches 10921 run title @a actionbar {"text": "Grace Period Ends in 1 Minute!", "color": "#ffa600"}
execute if score @r Timer matches 12021 run title @a actionbar {"text": "Grace Period Ends in: 5", "color": "#ff0000", "bold": true}
execute if score @r Timer matches 12041 run title @a actionbar {"text": "Grace Period Ends in: 4", "color": "#ff0000", "bold": true}
execute if score @r Timer matches 12061 run title @a actionbar {"text": "Grace Period Ends in: 3", "color": "#ff0000", "bold": true}
execute if score @r Timer matches 12081 run title @a actionbar {"text": "Grace Period Ends in: 2", "color": "#ff0000", "bold": true}
execute if score @r Timer matches 12101 run title @a actionbar {"text": "Grace Period Ends in: 1", "color": "#ff0000", "bold": true}
execute if score @r Timer matches 12121 run title @a title {"text": "Grace Period is Up!", "color": "#ff0000"}
execute if score @r Timer matches 12121 run effect clear @a saturation
execute if score @r Timer matches 12121 run gamerule naturalRegeneration false
execute if score @r Timer matches 12121 run team leave @a
execute if score @r Timer matches 12141 run title @a actionbar {"text": "Border Shrinks in 10 Minutes.", "color": "#48ad29"}
execute if score @r Timer matches 18121 run title @a actionbar {"text": "Border Shrinks in 5 Minutes.", "color": "#eeff00"}
execute if score @r Timer matches 22921 run title @a actionbar {"text": "Border Shrinks in 1 Minute!", "color": "#eeff00"}
execute if score @r Timer matches 24021 run title @a actionbar {"text": "Border Starts Shrinking in: 5", "color": "#ff0000", "bold": true}
execute if score @r Timer matches 24041 run title @a actionbar {"text": "Border Starts Shrinking in: 4", "color": "#ff0000", "bold": true}
execute if score @r Timer matches 24061 run title @a actionbar {"text": "Border Starts Shrinking in: 3", "color": "#ff0000", "bold": true}
execute if score @r Timer matches 24081 run title @a actionbar {"text": "Border Starts Shrinking in: 2", "color": "#ff0000", "bold": true}
execute if score @r Timer matches 24101 run title @a actionbar {"text": "Border Starts Shrinking in: 1", "color": "#ff0000", "bold": true}
execute if score @r Timer matches 24121 run title @a title {"text": "The Border is Shrinking!", "color": "#ff0000", "bold": true}
execute if score @r Timer matches 24121 run title @a actionbar {"text": "The Border Shrinks at Half a Block / Second", "color": "#48ad29"}
worldborder set 60 1200
execute at @a[scores={Deaths=1}] run function uhc:on_death
execute as @e[tag=coordStand,limit=1] at @s run particle minecraft:end_rod ~ 100 ~ 0.1 80 0.1 0 80 force
scoreboard players enable @a help
scoreboard players enable @a set_center
scoreboard players enable @a start
execute at @a[scores={help=1..}] run function uhc:help
execute at @a[scores={set_center=1..}] run function uhc:set_center
execute at @a[scores={start=1..}] run function uhc:start