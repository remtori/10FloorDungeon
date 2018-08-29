# Function by Remtori

# Check to make sure its not run anything unnecessary
execute if entity @s[scores={rtr_tpa_dim=0}] in overworld run tp @s ~ ~ ~ 
execute if entity @s[scores={rtr_tpa_dim=-1}] in the_nether run tp @s ~ ~ ~ 
execute if entity @s[scores={rtr_tpa_dim=1}] in the_end run tp @s ~ ~ ~ 
scoreboard players reset @s rtr_tpa_dim
execute as @s if entity @s[type=player] run function rtr_util:tpa_player
execute as @s if entity @s[type=!player] run function rtr_util:tpa_entity