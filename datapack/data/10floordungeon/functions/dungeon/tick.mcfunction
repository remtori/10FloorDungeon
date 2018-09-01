#
execute if score PrepareArea 10fd_state > n1 rtr_num if score Clock20 10fd_state = 1 rtr_num as @e[type=armor_stand,tag=10fdCleaner] run function 10floordungeon:dungeon/prepare_area/tick
execute as @e[type=armor_stand,tag=test,tag=!10fdBreak] at @s run function 10floordungeon:dungeon/maze/tick
