##
 # BattleText.mcfunction
 # 
 #
 # Created by .
##
team leave @s
team join Attacking @s
playsound minecraft:block.lever.click master @s
particle dust{color:[1.000,0.0,0.0],scale:1} ~ ~.3 ~ .5 .5 .5 .1 300 normal

tag @s add Attacking
tag @s remove Defending
