execute as @a[team=Attacking] at @s run particle minecraft:heart ~ ~ ~ 1 1 1 .1 100 force
effect give @a[team=Attacking] minecraft:health_boost 60 1 true

effect give @a[team=Attacking] minecraft:regeneration 5 4 true
execute as @a[team=Attacking] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~
kill @s