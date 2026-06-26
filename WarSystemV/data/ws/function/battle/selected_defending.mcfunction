##
 # BattleText.mcfunction
 # 
 #
 # Created by .
##
team leave @s
team join Defending @s
playsound minecraft:block.lever.click master @s
particle dust{color:[0.090,0.502,0.678],scale:1} ~ ~.3 ~ .5 .5 .5 .1 300 normal

tag @s remove Attacking
tag @s add Defending