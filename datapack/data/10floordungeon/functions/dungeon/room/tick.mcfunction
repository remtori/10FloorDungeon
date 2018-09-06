# RoomLX, RoomLZ -> RoomHX, RoomHZ
scoreboard players set RoomRangeX 10fd_temp 1
scoreboard players operation RoomRangeX 10fd_temp = RoomHX 10fd_settings
scoreboard players operation RoomRangeX 10fd_temp -= RoomLX 10fd_settings
scoreboard players set RoomRangeZ 10fd_temp 1
scoreboard players operation RoomRangeZ 10fd_temp = RoomHZ 10fd_settings
scoreboard players operation RoomRangeZ 10fd_temp -= RoomLZ 10fd_settings
# Odd number only
scoreboard players set Rand_Range_min rtr_num 2
scoreboard players set Rand_Range_max rtr_num 4
# area width - board
function rtr_util:random
scoreboard players operation Rand_Result rtr_num *= 2 rtr_num
scoreboard players add Rand_Result rtr_num 1
scoreboard players operation RoomFillX 10fd_temp = Rand_Result rtr_num
function rtr_util:random
scoreboard players operation Rand_Result rtr_num *= 2 rtr_num
scoreboard players add Rand_Result rtr_num 1
scoreboard players operation RoomFillZ 10fd_temp = Rand_Result rtr_num
# X
scoreboard players operation Rand_Range_max rtr_num = RoomRangeX 10fd_temp
scoreboard players operation Rand_Range_max rtr_num /= 2 rtr_num
function rtr_util:random
scoreboard players operation Rand_Result rtr_num *= 2 rtr_num
scoreboard players add Rand_Result rtr_num 1
scoreboard players operation Rand_Result rtr_num += RoomLX 10fd_settings
#tellraw @a ["",{"text":"X: "},{"score":{"name":"Rand_Result","objective":"rtr_num"}}]
execute store result entity @s Pos[0] double 1 run scoreboard players get Rand_Result rtr_num
# Z
scoreboard players operation Rand_Range_max rtr_num = RoomRangeZ 10fd_temp
scoreboard players operation Rand_Range_max rtr_num /= 2 rtr_num
function rtr_util:random
scoreboard players operation Rand_Result rtr_num *= 2 rtr_num
scoreboard players add Rand_Result rtr_num 1
scoreboard players operation Rand_Result rtr_num += RoomLZ 10fd_settings
#tellraw @a ["",{"text":"Z: "},{"score":{"name":"Rand_Result","objective":"rtr_num"}}]
execute store result entity @s Pos[2] double 1 run scoreboard players get Rand_Result rtr_num
# fill area
execute as @s run function 10floordungeon:dungeon/room/fill_temp
scoreboard players operation RoomFillCalc 10fd_temp = RoomFillX 10fd_temp
scoreboard players operation RoomFillCalc 10fd_temp *= RoomFillZ 10fd_temp
execute unless score RoomFillCount 10fd_temp = RoomFillCalc 10fd_temp at @s run fill ~-7 ~ ~-7 ~7 ~ ~7 white_concrete replace yellow_stained_glass
execute if score RoomFillCount 10fd_temp = RoomFillCalc 10fd_temp as @s run function 10floordungeon:dungeon/room/fill_success
scoreboard players add RoomAttemptCount 10fd_temp 1