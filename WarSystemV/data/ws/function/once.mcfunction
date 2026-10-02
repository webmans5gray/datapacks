##
 # once.mcfunction
 # 
 #
 # Created by .
##

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
team add Attacking
team add Defending

team modify Attacking color red
team modify Defending color dark_aqua
team modify Attacking nametagVisibility hideForOtherTeams
team modify Defending nametagVisibility hideForOtherTeams

team modify Attacking friendlyFire false
team modify Defending friendlyFire false

