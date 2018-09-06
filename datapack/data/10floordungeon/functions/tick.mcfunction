#
scoreboard players add Clock20 10fd_state 1
#
function 10floordungeon:dungeon/tick
function 10floordungeon:restricted_area/tick
#
execute if score Clock20 10fd_state matches 20.. run scoreboard players set Clock20 10fd_state 0
#
execute if score RoomAttemptCount 10fd_temp matches ..200 as @e[tag=testroom] run function 10floordungeon:dungeon/room/tick