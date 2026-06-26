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

#give @a potion[potion_contents={custom_color:11768639,custom_effects:[{id:"minecraft:instant_health",amplifier:0,duration:20}]},custom_name={"color":"yellow","italic":false,"text":"Ale"}] 1
#give @a potion[potion_contents={custom_color:11768639,custom_effects:[{id:"minecraft:instant_health",amplifier:0,duration:20}]},custom_name={"color":"yellow","italic":false,"text":"Ale"}] 1

#execute if predicate ws:5 run function ws:battle/ill_attacking
#execute if predicate ws:5 run function ws:battle/ill_defending

#execute if predicate ws:5 run function ws:battle/blunderbuss_attacking
#execute if predicate ws:5 run function ws:battle/blunderbuss_defending


#Random Item Drops
execute as @a if predicate ws:3 run give @s bow[minecraft:item_model=recurve_bow,unbreakable={},enchantments={"minecraft:flame":1,"minecraft:power":1},custom_name={"color":"yellow","italic":false,"text":"Arhcard’s Fang"}] 1
execute as @a if predicate ws:3 run give @s bow[item_model="longbow",unbreakable={},enchantments={"power":2,"punch":1},custom_name={"color":"yellow","italic":false,"text":"Calredian Longbow"},use_cooldown={seconds:2}] 1
execute as @a if predicate ws:3 run give @s iron_axe[item_model="double_headed_iron_battle_axe",unbreakable={},enchantments={"sharpness":2},custom_name={"color":"yellow","italic":false,"text":"Axe of Syrinfell"}] 1
execute as @a if predicate ws:3 run give @s netherite_spear[unbreakable={},enchantments={"fire_aspect":2},custom_name={"color":"yellow","italic":false,"text":"Spear of Verandil"}] 1
execute as @a if predicate ws:3 run give @s trident[unbreakable={},enchantments={"loyalty":1},custom_name={"color":"yellow","italic":false,"text":"Trident of Galamis"}] 1


#Supply

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





give @a[team=Attacking] ladder[custom_data={ropes:1},custom_name={"color":"yellow","italic":false,"text":"Siege Ropes"},lore=["Drop on ground"]] 4



