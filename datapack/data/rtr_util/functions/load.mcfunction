# Function by Remtori

# Init scoreboard 
scoreboard objectives add rtr_num dummy
# You always need a middle man
scoreboard objectives add rtr_temp dummy
# TPA
scoreboard objectives add rtr_tpa_dim dummy
scoreboard objectives add rtr_tpa_x dummy
scoreboard objectives add rtr_tpa_y dummy
scoreboard objectives add rtr_tpa_z dummy

## Init some number for calculation
## Random number generator using Linear congruential generator
scoreboard players set Rand_Range_min rtr_num 1
scoreboard players set Rand_Range_max rtr_num 100000
scoreboard players set Rand_M rtr_num 134456  
scoreboard players set Rand_A rtr_num 8121 
scoreboard players set Rand_C rtr_num 28411 
## Number 
scoreboard players set 1 rtr_num 1
scoreboard players set 2 rtr_num 2
scoreboard players set 3 rtr_num 3
scoreboard players set 4 rtr_num 4
scoreboard players set 16 rtr_num 16
scoreboard players set n1 rtr_num -1
## Get a seed for random function
execute store result score Rand_Seed rtr_num run seed