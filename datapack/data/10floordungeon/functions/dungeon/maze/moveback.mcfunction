execute as @s at @s run tp @s @e[tag=10fdDirSaver,limit=1,sort=nearest]
execute at @s run kill @e[tag=10fdDirSaver,limit=1,sort=nearest,distance=..0.01]
tag @s add 10fdMoved