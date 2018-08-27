# Function by Remtori
# Input: nothing
# Output: Rand_Result

# Description: Generate a consistent but random number base on your world seed

# Random number generator using Linear congruential generator
scoreboard players operation Rand_Seed rtr_temp *= Rand_A rtr_temp
scoreboard players operation Rand_Seed rtr_temp += Rand_C rtr_temp
scoreboard players operation Rand_Seed rtr_temp %= Rand_M rtr_temp
# 
execute if score Rand_Seed rtr_temp <= n1 rtr_temp run scoreboard players operation Rand_Seed rtr_temp *= n1 rtr_temp
# Set the result within range
scoreboard players operation Rand_Range rtr_temp = Rand_Range_max rtr_temp 
scoreboard players operation Rand_Range rtr_temp -= Rand_Range_min rtr_temp 
scoreboard players operation Rand_Result rtr_temp = Rand_Seed rtr_temp
scoreboard players operation Rand_Result rtr_temp %= Rand_Range rtr_temp
scoreboard players operation Rand_Result rtr_temp += Rand_Range_min rtr_temp
# Return the result to the executor (if any)
scoreboard players operation @s rtr_temp = Rand_Result rtr_temp