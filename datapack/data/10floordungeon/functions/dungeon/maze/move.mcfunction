execute at @s run summon armor_stand ~ ~ ~ {Tags:["10fdDirSaver"],CustomName:"\"10 Floor Dungeon Generator Marker\"",NoGravity:1,Invulnerable:1,Small:1}
execute as @s at @s run tp @s @e[tag=10fdChosenDir,limit=1,sort=nearest]
execute at @s run fill ~ ~ ~ ~ ~ ~ air
tag @s add 10fdMoved