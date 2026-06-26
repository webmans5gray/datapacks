
#execute as @a[team=Attacking] at @s if entity @a[team=Attacking,distance=.1..3] run function ws:battle/closeby

effect give @a[team=Attacking] minecraft:saturation infinite 1 true
effect give @a[team=Defending] minecraft:saturation infinite 1 true

execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:ladder",count:1,components:{"minecraft:custom_data":{ropes:1}}}}] at @s run function ws:battle/ropes

weather clear


execute if score t20 timer matches ..20 run scoreboard players add t20 timer 1
execute if score t20 timer matches 20.. run scoreboard players set t20 timer 0

execute as @a[scores={health=..10}] at @s run function ws:battle/effects/bleeding
execute as @a[scores={health=..4}] at @s run function ws:battle/effects/heavybleeding

execute as @e[type=squid,tag=smugnag1] at @s run function ws:battle/enemy/smugnag
