#Global Time
function dk:timeplayed

#execute as @a if score @s dk_active matches 1 run title @a actionbar ["§aGlobal §aDay: ",{"score":{"name": "day","objective": "Info"},"color": "yellow"}," §aHour: ",{"score":{"name": "hour","objective": "Info"},"color": "yellow"}," §aMin: ",{"score":{"name": "min","objective": "Info"},"color": "yellow"}," §aSeg: ",{"score":{"name": "seg","objective": "Info"},"color": "yellow"}]

#Contador
scoreboard players add seg dk_gtick 1

execute if score seg dk_gtick matches 20 run scoreboard players add seg Info 1
execute if score seg Info matches 60 run scoreboard players add min Info 1
execute if score min Info matches 60 run scoreboard players add hour Info 1
execute if score hour Info matches 24 run scoreboard players add Dia Info 1
execute if score hour Info matches 24 run scoreboard players add Dia dk_gdayserver 1
execute if score seg dk_gtick matches 20 run scoreboard players reset seg dk_gtick

execute if score seg Info matches 60 run scoreboard players set seg Info 0
execute if score min Info matches 60 run scoreboard players set min Info 0
execute if score hour Info matches 24 run scoreboard players set hour Info 0

scoreboard players enable @a dk_active