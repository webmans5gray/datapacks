execute as @a[team=Defending] at @s run particle minecraft:happy_villager ~ ~ ~ 1 1 1 .1 100 force
effect give @a[team=Defending] minecraft:speed 30 0 true
effect give @a[team=Defending] minecraft:resistance 30 0 true
effect give @a[team=Defending] minecraft:regeneration 30 0 true
execute as @a[team=Defending] at @s run playsound minecraft:item.goat_horn.sound.0 master @a ~ ~ ~
kill @s