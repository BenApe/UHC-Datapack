# Commands to run when the datapack is loaded
tellraw @a {"text":"UHC Datapack Loaded!","italic":true,"font":"minecraft:uniform"}
scoreboard objectives add clear_nether trigger
scoreboard objectives add help trigger
scoreboard objectives add set_center trigger
scoreboard objectives add start trigger
scoreboard objectives add top trigger

# 0 is true 1 is false
scoreboard objectives add is_in_overworld dummy