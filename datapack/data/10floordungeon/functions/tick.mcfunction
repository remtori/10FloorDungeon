#
scoreboard players add Clock20 10fd_state 1
#
function 10floordungeon:dungeon/tick
function 10floordungeon:restricted_area/tick
#
execute if score Clock20 10fd_state >= 20 rtr_num run scoreboard players set Clock20 10fd_state 0