#
scoreboard players add PrepareAreaDir 10fd_temp 1
execute if score PrepareAreaDir 10fd_temp matches 5.. run scoreboard players set PrepareAreaDir 10fd_temp 1
#
scoreboard players operation PrepareAreaTemp 10fd_temp = PrepareAreaChangeDir 10fd_temp
scoreboard players operation PrepareAreaChangeDir 10fd_temp = PrepareAreaPrev 10fd_temp
scoreboard players operation PrepareAreaChangeDir 10fd_temp += PrepareAreaStep 10fd_temp
scoreboard players operation PrepareAreaPrev 10fd_temp = PrepareAreaTemp 10fd_temp
scoreboard players add PrepareAreaStep 10fd_temp 1