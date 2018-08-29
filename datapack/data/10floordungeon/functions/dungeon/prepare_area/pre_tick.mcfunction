#
scoreboard players set PrepareArea 10fd_state 0
scoreboard players set PrepareAreaPrev 10fd_temp 1
scoreboard players set PrepareAreaDir 10fd_temp 1
scoreboard players set PrepareAreaStep 10fd_temp 1
scoreboard players set PrepareAreaChangeDir 10fd_temp 1
#
kill @e[type=armor_stand,tag=10fdCleaner]
summon armor_stand ~ ~ ~ {NoGravity:1,Invulneralbe:1,Tags:["10fdCleaner"]}
execute as @e[type=armor_stand,tag=10fdCleaner] run function 10floordungeon:tp_to_dungeon
execute as @e[type=armor_stand,tag=10fdCleaner] run function rtr_util:tpa/lowwer_chunk_corner
execute as @e[type=armor_stand,tag=10fdCleaner] run function 10floordungeon:dungeon/prepare_area/tick