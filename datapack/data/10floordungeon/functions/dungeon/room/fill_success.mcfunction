scoreboard players remove RoomFillX 10fd_temp 2
scoreboard players remove RoomFillZ 10fd_temp 2
execute as @s run function 10floordungeon:dungeon/room/fill
execute at @s run fill ~-7 ~ ~-7 ~7 ~ ~7 lime_stained_glass replace yellow_stained_glass