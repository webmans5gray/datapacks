setblock ~ ~ ~ air
fill ~ ~ ~ ~ ~20 ~ minecraft:scaffolding replace air
summon item ~ ~2 ~ {Item:{id:"minecraft:scaffolding",count:10,components:{"minecraft:can_place_on":[{blocks:"scaffolding"}]}}}
summon marker ~ ~ ~ {Tags:["cleanup"]}
particle block{block_state:"minecraft:oak_log"} ~ ~ ~ .3 3 .3 0.1 100 normal
playsound minecraft:block.wood.place block @a ~ ~ ~
kill @s