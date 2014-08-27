# learn by project
# inventory

import time

# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# set of possible things - 
# database with parameters - possible value intervals

# name generator from another database

# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# loading script 
# creates dictionary from database ?


#armory = 


#d = {}
d = {
        "name":"Mighty Sword", 
        "type":"long-sword", 
        "damage": {
            "drop": {
                "min":10, # minimal for drop rate
                "max":20 # maximal for drop rate
                },
            "crit":42 # always the same
            },
        "weight": 10,
        "durability": {
            "drop": {
                "min":50,
                "max":100
                },
            "coeficient":1
            },
        "slots": {
            "x":1,
            "y":4
            },
        "material":"irridium"
#        "model":"long_sword_1 # model would be generated in loading time as a combination of individual database parameters with an extension
        }

#d["key"] = "value"
#str = d["damage"]["crit"]

str = d["damage"]["crit"]*10

print(str)

time.sleep(2)

# list [ 

# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# inventory 
# list with that can import things by find_random ...
# add item with random parameters with values within possible value intervals

# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# quest
# find enaught items for killing enemy - enaugh damage
