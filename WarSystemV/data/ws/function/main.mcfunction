
#execute as @a[team=Attacking] at @s if entity @a[team=Attacking,distance=.1..3] run function ws:battle/closeby


weather clear

#execute if entity @a[team=Attacking]
execute if score t20 timer matches ..20 run scoreboard players add t20 timer 1
execute if score t20 timer matches 20.. run scoreboard players set t20 timer 0

execute as @a[scores={health=..10}] at @s run function ws:battle/effects/bleeding
execute as @a[scores={health=..4}] at @s run function ws:battle/effects/heavybleeding

execute as @e[tag=gw_tower] at @s positioned ~ ~-1 ~ run function ws:battle/tower


effect give @a[team=Attacking] minecraft:saturation infinite 1 true
effect give @a[team=Defending] minecraft:saturation infinite 1 true

execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:ladder",count:1,components:{"minecraft:custom_data":{ropes:1}}}}] at @s run function ws:battle/ropes

execute as @e[type=squid,tag=smugnag1] at @s run function ws:battle/enemy/smugnag



execute if entity @a[team=Attacking] run function ws:during_battle
execute if entity @a[team=Defending] run function ws:during_battle


#OIL
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:player_head",count:1,components:{"minecraft:custom_data":{oil:1}}}}] at @s run function ws:battle/oil
execute as @e[type=marker,tag=oil2] at @s if predicate ws:12.5 run function ws:battle/oil3
scoreboard players add @e[type=marker,tag=oil2] junktimer 1
execute as @e[type=marker,tag=oil2] at @s if score @s junktimer matches 140 run kill @s

#SURRENDER
execute as @a at @s if entity @s[nbt={active_effects:[{id:"minecraft:unluck",amplifier:100b,duration:1}]}] run function ws:battle/surrender

#Death cleanup
execute as @a[team=Attacking] if score @s timeSinceDeath matches 5 run function ws:battle/dead_attacker
execute as @a[team=Defending] if score @s timeSinceDeath matches 5 run function ws:battle/dead_defending
