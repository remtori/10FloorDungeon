# 1: +z
# 2: +x
# 3: -z
# 4: -x
# Fill area
execute at @s run fill ~ 255 ~ ~15 255 ~15 command_block{Command:"fill ~ 0 ~ ~ 255 ~ stone",auto: 1}
# Calculate next move
tellraw @a ["",{"text":"PrepareArea State: ("},{"score":{"name":"PrepareArea","objective":"10fd_state"}},{"text":"/25)"}]
scoreboard players add PrepareArea 10fd_state 1
execute if score PrepareAreaChangeDir 10fd_temp = PrepareArea 10fd_state run function 10floordungeon:dungeon/prepare_area/change_dir
execute if score PrepareAreaDir 10fd_temp = 1 rtr_num as @s at @s run tp @s ~ ~ ~16
execute if score PrepareAreaDir 10fd_temp = 2 rtr_num as @s at @s run tp @s ~16 ~ ~
execute if score PrepareAreaDir 10fd_temp = 3 rtr_num as @s at @s run tp @s ~ ~ ~-16
execute if score PrepareAreaDir 10fd_temp = 4 rtr_num as @s at @s run tp @s ~-16 ~ ~
execute if score PrepareArea 10fd_state >= 25 rtr_num run function 10floordungeon:dungeon/prepare_area/post_tick

