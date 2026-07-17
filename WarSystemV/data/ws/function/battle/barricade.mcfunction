
fill ~ ~ ~ ~ ~3 ~ minecraft:oak_planks replace air
fill ~ ~ ~ ~ ~3 ~ minecraft:oak_planks replace short_grass
particle block{block_state:"minecraft:oak_log"} ~ ~ ~ .7 2.5 .7 0.1 100 normal
summon marker ~ ~ ~ {Tags:["cleanup"]}
playsound minecraft:block.wood.place block @a ~ ~ ~
playsound minecraft:block.wood.place block @a ~ ~ ~
playsound minecraft:block.wood.place block @a ~ ~ ~

kill @s