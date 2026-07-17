execute as @a[team=Defending] at @s run particle minecraft:heart ~ ~ ~ 1 1 1 .1 100 force
effect give @a[team=Defending] minecraft:health_boost 60 1 true

effect give @a[team=Defending] minecraft:regeneration 5 4 true
execute as @a[team=Defending] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~
kill @s