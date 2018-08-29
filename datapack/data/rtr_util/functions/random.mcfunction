# Function by Remtori
# Input: nothing
# Output: Rand_Result

# Description: Generate a consistent but random number base on your world seed

# Random number generator using Linear congruential generator
scoreboard players operation Rand_Seed rtr_num *= Rand_A rtr_num
scoreboard players operation Rand_Seed rtr_num += Rand_C rtr_num
scoreboard players operation Rand_Seed rtr_num %= Rand_M rtr_num
# 
execute if score Rand_Seed rtr_num <= n1 rtr_num run scoreboard players operation Rand_Seed rtr_num *= n1 rtr_num
# Set the result within range
scoreboard players operation Rand_Range rtr_num = Rand_Range_max rtr_num 
scoreboard players operation Rand_Range rtr_num -= Rand_Range_min rtr_num 
scoreboard players operation Rand_Result rtr_num = Rand_Seed rtr_num
scoreboard players operation Rand_Result rtr_num %= Rand_Range rtr_num
scoreboard players operation Rand_Result rtr_num += Rand_Range_min rtr_num
# Return the result to the executor (if any)
scoreboard players operation @s rtr_num = Rand_Result rtr_num