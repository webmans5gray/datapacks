##
 # BattleText.mcfunction
 # 
 #
 # Created by .
##


clear @a[team=Attacking]
clear @a[team=Defending]
gamemode adventure @a[team=Attacking]
gamemode adventure @a[team=Defending]

effect clear @a
effect give @a saturation infinite 1 true
effect give @a regeneration 5 10 true
gamerule natural_health_regeneration false


item replace entity @a[team=Attacking] armor.head with iron_helmet[dyed_color=686722,trim={material:"minecraft:redstone",pattern:"minecraft:tide"}] 1
item replace entity @a[team=Attacking] armor.chest with iron_chestplate[dyed_color=686722,trim={material:"minecraft:redstone",pattern:"minecraft:tide"}] 1
item replace entity @a[team=Attacking] armor.legs with iron_leggings[dyed_color=4534310,trim={material:"minecraft:redstone",pattern:"minecraft:tide"}] 1
item replace entity @a[team=Attacking] armor.feet with iron_boots[dyed_color=4534310,trim={material:"minecraft:redstone",pattern:"minecraft:tide"}] 1


item replace entity @a[team=Defending] armor.head with iron_helmet[dyed_color=13373199,trim={material:"minecraft:lapis",pattern:"minecraft:tide"}] 1
item replace entity @a[team=Defending] armor.chest with iron_chestplate[dyed_color=13373199,trim={material:"minecraft:lapis",pattern:"minecraft:tide"}] 1
item replace entity @a[team=Defending] armor.legs with iron_leggings[dyed_color=4534310,trim={material:"minecraft:lapis",pattern:"minecraft:tide"}] 1
item replace entity @a[team=Defending] armor.feet with iron_boots[dyed_color=4534310,trim={material:"minecraft:lapis",pattern:"minecraft:tide"}] 1

give @a bow[unbreakable={}] 1
give @a iron_sword[unbreakable={}] 1
give @a shield[item_model="iron_round_shield",max_damage=30] 1
give @a arrow 16
give @a spyglass 1

#give @a potion[potion_contents={custom_color:11768639,custom_effects:[{id:"minecraft:instant_health",amplifier:0,duration:20}]},custom_name={"color":"yellow","italic":false,"text":"Ale"}] 1
#give @a potion[potion_contents={custom_color:11768639,custom_effects:[{id:"minecraft:instant_health",amplifier:0,duration:20}]},custom_name={"color":"yellow","italic":false,"text":"Ale"}] 1

#execute if predicate ws:5 run function ws:battle/ill_attacking
#execute if predicate ws:5 run function ws:battle/ill_defending

#execute if predicate ws:5 run function ws:battle/blunderbuss_attacking
#execute if predicate ws:5 run function ws:battle/blunderbuss_defending


#Random Item Drops
execute as @a if predicate ws:3 run give @s bow[item_model="longbow",unbreakable={},enchantments={"power":2,"punch":1},custom_name={"color":"yellow","italic":false,"text":"Calredian Longbow"},use_cooldown={seconds:2}] 1
execute as @a if predicate ws:3 run give @s iron_axe[item_model="double_headed_iron_battle_axe",unbreakable={},enchantments={"sharpness":2},custom_name={"color":"yellow","italic":false,"text":"Axe of Syrinfell"}] 1
execute as @a if predicate ws:3 run give @s netherite_spear[unbreakable={},enchantments={"fire_aspect":2},custom_name={"color":"yellow","italic":false,"text":"Spear of Verandil"}] 1
execute as @a if predicate ws:3 run give @s trident[unbreakable={},enchantments={"loyalty":1},custom_name={"color":"yellow","italic":false,"text":"Trident of Galamis"}] 1
execute as @a if predicate ws:3 run give @s bow[minecraft:item_model=recurve_bow,unbreakable={},enchantments={"minecraft:flame":1,"minecraft:power":1},custom_name={"color":"yellow","italic":false,"text":"Archard’s Fang"}] 1


execute as @a[team=Defending] if predicate ws:10 run give @s player_head[profile={"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODg0MTg3MDlmNmJkMDlhNWYwYWUwNjAxZTQ5ZGFiNTNiNTYzMTllMTZlZDRlYTg0MTg5NWZkMTkxNjk5YWMwZCJ9fX0="}]},custom_name=[{"color":"red","italic":false,"text":"Hot Oil"},{"color":"white","text":" | "},{"color":"yellow","italic":true,"text":" Drop to Activate!"}],custom_data={oil:1},max_stack_size=1] 1

execute as @a if predicate ws:3 run give @s diamond_chestplate[trim={material:"minecraft:iron",pattern:"minecraft:dune"},enchantments={"fire_protection":1,"projectile_protection":2,"thorns":1},custom_name="Dwardon's Chestplate",unbreakable={}] 1
execute as @a if predicate ws:3 run give @s leather_boots[dyed_color=16749130,enchantments={"blast_protection":1,"feather_falling":1,"fire_protection":1,"protection":3,"depth_strider":1,"soul_speed":1},attribute_modifiers=[{id:"movement_speed",type:"movement_speed",amount:.1,operation:"add_multiplied_total"}],custom_name={"bold":true,"italic":false,"text":"Zilgamesh's Boots"},lore=["Mayor of Zugurcho, 3e 88"]] 1
execute as @a if predicate ws:3 run give @s crossbow[enchantments={"multishot":1,"infinity":1},attribute_modifiers=[{id:"movement_speed",type:"movement_speed",amount:-.5,operation:"add_multiplied_total",slot:"hand"}],custom_name={"italic":false,"text":"Galeo Caldus' Arblast"},charged_projectiles=[{id:"minecraft:spectral_arrow",count:1,components:{"minecraft:intangible_projectile":{}}}]] 1
execute as @a if predicate ws:3 run give @s trident[unbreakable={},enchantments={"loyalty":1},custom_name={"color":"yellow","italic":false,"text":"Trident of Galamis"}] 1

execute as @a if predicate ws:3 run loot give @s loot ws:potion1
execute as @a if predicate ws:5 run loot give @s loot ws:healing
execute as @a if predicate ws:5 run give @s ender_pearl

execute as @a if predicate ws:5 run give @s snowball[custom_data={fireball:1},custom_name=[{"color":"red","italic":false,"text":"Fireball"},{"color":"white","text":" | "},{"color":"yellow","text":"Right click to cast"}],max_stack_size=1,item_model="fire_charge",enchantment_glint_override=true] 2
execute as @a[team=Attacking] if predicate ws:10 run give @s snowball[custom_data={abardic:1},custom_name=[{"color":"red","italic":false,"text":"Bardic Inspiration"},{"color":"white","text":" | "},{"color":"yellow","text":"Right click to cast"}],max_stack_size=1,item_model="goat_horn",enchantment_glint_override=true,lore=["Gives all allies within 50 blocks resistance, speed, and regeneration"]] 1
execute as @a[team=Defending] if predicate ws:10 run give @s snowball[custom_data={dbardic:1},custom_name=[{"color":"red","italic":false,"text":"Bardic Inspiration"},{"color":"white","text":" | "},{"color":"yellow","text":"Right click to cast"}],max_stack_size=1,item_model="goat_horn",enchantment_glint_override=true,lore=["Gives all allies within 50 blocks resistance, speed, and regeneration"]] 1

execute as @a[team=Attacking] if predicate ws:3 run give @s snowball[custom_data={alife:1},custom_name=[{"color":"red","italic":false,"text":"Bardic Inspiration"},{"color":"white","text":" | "},{"color":"yellow","text":"Right click to cast"}],max_stack_size=1,item_model="enchanted_book",enchantment_glint_override=true,lore=["Gives all allies a health boost"]] 1

execute as @a[team=Defending] if predicate ws:3 run give @s snowball[custom_data={dlife:1},custom_name=[{"color":"red","italic":false,"text":"Arcane Fortification"},{"color":"white","text":" | "},{"color":"yellow","text":"Right click to cast"}],max_stack_size=1,item_model="enchanted_book",enchantment_glint_override=true,lore=["Gives all allies a health boost"]] 1




#Supply/give @p snowball[custom_data={bardic:1},custom_name=[{"color":"red","italic":false,"text":"Bardic Inspiration"},{"color":"white","text":" | "},{"color":"yellow","text":"Right click to cast"}],max_stack_size=1,item_model="goat_horn",enchantment_glint_override=true,lore=["Gives all allies within 50 blocks resistance, speed, and regeneration"]] 1

execute if score Defending Supply matches -2 run execute as @a[tag=Defending] run function ws:battle/gear/-2_supply
execute if score Defending Supply matches -1 run execute as @a[tag=Defending] run function ws:battle/gear/-1_supply
execute if score Defending Supply matches 1 run give @a[tag=Defending] potion[potion_contents={custom_color:11768639,custom_effects:[{id:"minecraft:instant_health",amplifier:0,duration:20}]},custom_name={"color":"yellow","italic":false,"text":"Ale"}] 1
execute if score Defending Supply matches 2 run give @a[tag=Defending] potion[potion_contents={custom_color:11768639,custom_effects:[{id:"minecraft:instant_health",amplifier:0,duration:20}]},custom_name={"color":"yellow","italic":false,"text":"Ale"}] 2


execute if score Attacking Supply matches -2 run execute as @a[tag=Attacking] run function ws:battle/gear/-2_supply
execute if score Attacking Supply matches -1 run execute as @a[tag=Attacking] run function ws:battle/gear/-1_supply
execute if score Attacking Supply matches 1 run give @a[tag=Attacking] potion[potion_contents={custom_color:11768639,custom_effects:[{id:"minecraft:instant_health",amplifier:0,duration:20}]},custom_name={"color":"yellow","italic":false,"text":"Ale"}] 1
execute if score Attacking Supply matches 2 run give @a[tag=Attacking] potion[potion_contents={custom_color:11768639,custom_effects:[{id:"minecraft:instant_health",amplifier:0,duration:20}]},custom_name={"color":"yellow","italic":false,"text":"Ale"}] 2

#Absorbtion
execute if score Defending Absorption matches 1 run effect give @a[tag=Defending] minecraft:absorption infinite 0 true
execute if score Defending Absorption matches 2 run effect give @a[tag=Defending] minecraft:absorption infinite 1 true
execute if score Defending Absorption matches 3 run effect give @a[tag=Defending] minecraft:absorption infinite 2 true

execute if score Attacking Absorption matches 1 run effect give @a[tag=Attacking] minecraft:absorption infinite 0 true
execute if score Attacking Absorption matches 2 run effect give @a[tag=Attacking] minecraft:absorption infinite 1 true
execute if score Attacking Absorption matches 3 run effect give @a[tag=Attacking] minecraft:absorption infinite 2 true




give @a[team=Attacking] player_head[custom_name=[{"color":"dark_gray","italic":false,"text":"Barricade"},{"color":"white","text":" | "},{"color":"yellow","text":"Drop to Place"}],profile={"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTgzODI0MWUyOTg1MjZjNTg5YzAwM2VhN2FiZWViOGFmZGRhZTc1NWVlNzhlYzgyNzZlZjA2MTU2MmUwZjNkZiJ9fX0="}]},enchantment_glint_override=true,custom_data={barricade:1}] 4
give @a[team=Attacking] ladder[custom_data={ropes:1},custom_name={"color":"yellow","italic":false,"text":"Siege Ropes | Drop to Place"},lore=[""]] 4



give @a white_banner[lore=["You coward"],enchantment_glint_override=true,custom_name={"color":"dark_gray","italic":false,"text":"Hold Right Click to Surrender","underlined":true},consumable={consume_seconds:1,animation:"bow",sound:"entity.pig.hurt",has_consume_particles:false,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:unluck",amplifier:100,duration:10,show_particles:0b,show_icon:0b}]}]}] 1


scoreboard players set @a Deaths 0
gamerule send_command_feedback true
