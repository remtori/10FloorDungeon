#
kill @e[tag=10fdDir]
execute at @s run summon armor_stand ~ ~ ~1 {Tags:["10fdDir"],Invulnerable:1,NoGravity:1}
execute at @s run summon armor_stand ~1 ~ ~ {Tags:["10fdDir"],Invulnerable:1,NoGravity:1}
execute at @s run summon armor_stand ~ ~ ~-1 {Tags:["10fdDir"],Invulnerable:1,NoGravity:1}
execute at @s run summon armor_stand ~-1 ~ ~ {Tags:["10fdDir"],Invulnerable:1,NoGravity:1}
execute as @e[tag=10fdDir] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=10fdDir] at @s if block ~ ~ ~1 white_concrete run scoreboard players add @s 10fd_temp 1
execute as @e[tag=10fdDir] at @s if block ~1 ~ ~ white_concrete run scoreboard players add @s 10fd_temp 1
execute as @e[tag=10fdDir] at @s if block ~ ~ ~-1 white_concrete run scoreboard players add @s 10fd_temp 1
execute as @e[tag=10fdDir] at @s if block ~-1 ~ ~ white_concrete run scoreboard players add @s 10fd_temp 1
#
tag @s remove 10fdMoved
execute at @s run tag @e[tag=10fdDir,limit=1,sort=random,scores={10fd_temp=3..}] add 10fdChosenDir
execute as @s if entity @e[tag=10fdChosenDir] run function 10floordungeon:dungeon/maze/move
kill @e[tag=10fdDir]
#
execute as @s at @s unless entity @s[tag=10fdMoved] if entity @e[tag=10fdDirSaver,distance=..1.4] run function 10floordungeon:dungeon/maze/moveback
execute unless entity @s[tag=10fdMoved] run tag @s add 10fdBreak
