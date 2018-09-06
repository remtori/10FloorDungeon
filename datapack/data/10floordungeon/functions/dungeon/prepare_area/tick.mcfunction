# 1: +z
# 2: +x
# 3: -z
# 4: -x
# Fill area
execute at @s run fill ~ 0 ~ ~15 0 ~15 command_block{Command:"fill ~ 0 ~ ~ 255 ~ white_concrete",auto: 1}
# Calculate next move
tellraw @a ["",{"text":"PrepareArea State: ("},{"score":{"name":"PrepareArea","objective":"10fd_state"}},{"text":"/24)"}]
scoreboard players add PrepareArea 10fd_state 1
execute if score PrepareAreaChangeDir 10fd_temp = PrepareArea 10fd_state run function 10floordungeon:dungeon/prepare_area/change_dir
execute if score PrepareAreaDir 10fd_temp matches 1 as @s at @s run tp @s ~ ~ ~16
execute if score PrepareAreaDir 10fd_temp matches 2 as @s at @s run tp @s ~16 ~ ~
execute if score PrepareAreaDir 10fd_temp matches 3 as @s at @s run tp @s ~ ~ ~-16
execute if score PrepareAreaDir 10fd_temp matches 4 as @s at @s run tp @s ~-16 ~ ~
execute if score PrepareArea 10fd_state matches 25.. run function 10floordungeon:dungeon/prepare_area/post_tick

