### UUID 00000000-3686-2ce8-0000-000001cadcbf

execute unless entity 00000000-3686-2ce8-0000-000001cadcbf run function 10floordungeon:msg/welcome
summon area_effect_cloud ~ 50000 ~ {UUIDLeast:30071999L,UUIDMost:914762984L,CustomName:"\"10 Floor Dungeon Spawn Marker\"",Duration:-1,Age:-2147483648,WaitTime:-2147483648}

scoreboard objectives add 10fd_settings dummy "Dungeon Settings"
scoreboard objectives add 10fd_state dummy "State machine for a lot of things"
scoreboard objectives add 10fd_temp dummy "You always need a middle man"
scoreboard objectives add 10fd_id dummy "ID for identify ... stuff"
#Restricted area
scoreboard objectives add 10fd_ra_lx dummy
scoreboard objectives add 10fd_ra_lz dummy
scoreboard objectives add 10fd_ra_hx dummy
scoreboard objectives add 10fd_ra_hz dummy