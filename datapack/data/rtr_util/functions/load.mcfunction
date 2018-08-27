# Function by Remtori

# Init scoreboard 
scoreboard objectives add rtr_io dummy
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
scoreboard players set Rand_Range_min rtr_temp 1
scoreboard players set Rand_Range_max rtr_temp 100000
scoreboard players set Rand_M rtr_temp 134456  
scoreboard players set Rand_A rtr_temp 8121 
scoreboard players set Rand_C rtr_temp 28411 
## Number 
scoreboard players set 1 rtr_temp 1
scoreboard players set n1 rtr_temp -1
## Get a seed for random function
execute store result score Rand_Seed rtr_temp run seed