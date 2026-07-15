##
 # once.mcfunction
 # 
 #
 # Created by .
##
team add Attacking
team add Defending
scoreboard objectives add Supply dummy
scoreboard objectives add Absorption dummy
scoreboard objectives add timer dummy
scoreboard players set t20 timer 0
scoreboard objectives add health health

scoreboard objectives add junktimer dummy
gamerule fire_spread_radius_around_player 0

scoreboard objectives add Deaths deathCount
scoreboard objectives add timeSinceDeath minecraft.custom:minecraft.time_since_death


team add Surrendered
team modify Surrendered suffix {"bold":true,"text":" (Surrendered)"}

