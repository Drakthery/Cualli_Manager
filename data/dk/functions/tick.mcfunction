title @p actionbar ["hour: ",{"score":{"name": "hour","objective": "Info"},"color": "yellow"}," min: ",{"score":{"name": "min","objective": "Info"},"color": "yellow"}," seg: ",{"score":{"name": "seg","objective": "Info"},"color": "yellow"}]

scoreboard players add seg dk_Seg 1
execute if score seg dk_Seg matches 20 run scoreboard players add seg Info 1
execute if score seg Info matches 60 run scoreboard players add min Info 1
execute if score min Info matches 60 run scoreboard players add hour Info 1
execute if score seg dk_Seg matches 20 run scoreboard players reset seg dk_Seg

execute if score seg Info matches 60 run scoreboard players reset seg Info
execute if score min Info matches 60 run scoreboard players reset min Info