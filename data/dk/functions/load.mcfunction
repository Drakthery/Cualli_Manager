#Init coontador player
scoreboard objectives add dk_tick dummy
scoreboard objectives add dk_seg dummy
scoreboard objectives add dk_min dummy
scoreboard objectives add dk_hour dummy


#Init Contador Global
scoreboard objectives add dk_gtick dummy
scoreboard objectives add dk_gseg dummy
scoreboard objectives add dk_gmin dummy
scoreboard objectives add dk_ghour dummy
scoreboard objectives add dk_gday dummy
#Info contador global
scoreboard objectives add Info dummy
scoreboard objectives add dk_gdayserver dummy

#Create Trigger
scoreboard objectives add dk_active trigger

scoreboard objectives modify dk_gdayserver displayname {"text":"Server","color":"gray","bold": true}

team join dia Dia

tellraw @a {"text":"TimePlayed By Drakthery V2.5","color": "yellow","bold": true}
#team add dk.min {"text":"min","color":"green"}
#team join dk.min min

#team add dk.hour {"text":"hour","color":"green"}
#team join dk.hour hour