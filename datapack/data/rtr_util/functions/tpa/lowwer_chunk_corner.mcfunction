execute store result score TempLCCX rtr_temp run data get entity @s Pos[0]
execute store result score TempLCCZ rtr_temp run data get entity @s Pos[2]
scoreboard players operation TempLCCX rtr_temp /= 16 rtr_num
scoreboard players operation TempLCCZ rtr_temp /= 16 rtr_num
scoreboard players operation TempLCCX rtr_temp *= 16 rtr_num
scoreboard players operation TempLCCZ rtr_temp *= 16 rtr_num
scoreboard players set @s rtr_tpa_dim 0
scoreboard players operation @s rtr_tpa_x = TempLCCX rtr_temp
scoreboard players operation @s rtr_tpa_z = TempLCCZ rtr_temp
execute as @s run function rtr_util:tpa