execute as @a if score @s dk_active matches 0 run title @s actionbar ["§aHour: ",{"score":{"name": "@s","objective": "dk_hour"},"color": "yellow"}," §aMin: ",{"score":{"name": "@s","objective": "dk_min"},"color": "yellow"}," §aSeg: ",{"score":{"name": "@s","objective": "dk_seg"},"color": "yellow"}]

execute as @a run scoreboard players add @s dk_tick 1
execute as @a if score @s dk_tick matches 20 run scoreboard players add @s dk_seg 1
execute as @a if score @s dk_tick matches 20 run scoreboard players set @s dk_tick 0
execute as @a if score @s dk_seg matches 60 run scoreboard players add @s dk_min 1
execute as @a if score @s dk_min matches 60 run scoreboard players add @s dk_hour 1

execute as @a if score @s dk_seg matches 60 run scoreboard players set @s dk_seg 0
execute as @a if score @s dk_min matches 60 run scoreboard players set @s dk_min 0

scoreboard players enable @a dk_active