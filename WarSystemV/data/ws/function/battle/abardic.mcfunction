execute as @a[team=Attacking] at @s run particle minecraft:happy_villager ~ ~ ~ 1 1 1 .1 100 force
effect give @a[team=Attacking] minecraft:speed 30 0 true
effect give @a[team=Attacking] minecraft:resistance 30 0 true
effect give @a[team=Attacking] minecraft:regeneration 30 0 true
execute as @a[team=Attacking] at @s run playsound minecraft:item.goat_horn.sound.0 master @a ~ ~ ~
kill @s