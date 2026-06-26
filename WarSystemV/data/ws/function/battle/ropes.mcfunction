setblock ~ ~ ~ air
fill ~ ~ ~ ~ ~20 ~ minecraft:scaffolding replace air
summon item ~ ~2 ~ {Item:{id:"minecraft:scaffolding",count:10,components:{"minecraft:can_place_on":[{blocks:"scaffolding"}]}}}

kill @s