# Remove restricted area
scoreboard players add RemoveRestrictedAreaId 10fd_settings 0
execute if score RemoveRestrictedAreaId 10fd_settings > 0 rtr_num run function 10floordungeon:restricted_area/try_remove_area