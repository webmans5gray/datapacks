team leave @a
effect clear @a

execute at @e[type=marker,tag=cleanup] run fill ~ ~ ~ ~ ~3 ~ air replace minecraft:oak_planks
execute at @e[type=marker,tag=cleanup] run fill ~ ~ ~ ~ ~3 ~ air replace scaffolding
execute at @e[type=marker,tag=cleanup] run fill ~ ~ ~ ~ ~1 ~ minecraft:air replace cobweb

kill @e[type=marker,tag=cleanup]
