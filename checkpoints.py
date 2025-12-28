'''
-----------------------------------------------
File: checkpoints.py
Project: Ardonia Grand Prix Checkpoint Compiler
Date: 2025-12-28
Author: Vexnos
-----------------------------------------------
'''
#-------Libraries-------
import json
import os
import shutil
from itertools import tee, islice, chain

#-------Functions-------
# Function to check previous iterable by nosklo
def previous_and_next(some_iterable):
    prevs, items, nexts = tee(some_iterable, 3)
    prevs = chain([None], prevs)
    nexts = chain(islice(nexts, 1, None), [None])
    return zip(prevs, items, nexts)

# Import course from json
def import_course(path):
    preset_courses = {
        "main": "courses/main.json",
        "reverse": "courses/reverse.json",
        "test": "courses/__template.json"
    }
    # Check if path is in presets dictionary
    if path in preset_courses:
        path = preset_courses[path]
    with open(path, "r") as file:
        course = json.load(file)
    return course

def clear_folder(path):
    shutil.rmtree(path)
    os.makedirs(path)

# Compile Advancements
def compile_advancements(course):
    clear_folder(ADVANCEMENTS_PATH) # Delete old advancements
    for previous, item, nxt in previous_and_next(course["checkpoints"]):
        advancement = {
            "display": {
                "icon": {
                    "id": item['advancement_icon']
                },
                "title": {
                    "text": item['name'],
                    "type": "text",
                    "color": "#FFFF55"
                },
                "description": {
                    "text": item['description'],
                    "type": "text",
                    "color": "#FFFF55"
                },
                "frame": "goal",
                "show_toast": True,
                "announce_to_chat": True,
                "hidden": False
            },
            "parent": f"race:checkpoints/{previous['id']}" if previous is not None else "race:root",
            "criteria": {
                "root": {
                    "trigger": "minecraft:impossible"
                }
            }
        }
        if "custom_model_data" in item:
            advancement["display"]["icon"]["components"] = {
                "minecraft:custom_model_data": {
                    "floats": [
                        item["custom_model_data"]
                    ]
                }
            }
        if "potion_contents" in item:
            advancement["display"]["icon"]["components"] = {
                "potion_contents": item["potion_contents"],
                "enchantment_glint_override": True
            }
        with open(f"{ADVANCEMENTS_PATH}{item['id']}.json", "w") as file:
            json.dump(advancement, file, indent=4)

def compile_checkpoints(course):
    # Compile checkpoints.mcfunction
    checkpoints_lines = []
    for previous, item, nxt in previous_and_next(course["checkpoints"]):
        x, y, z = item["lodestone"] # Retrieve coordinates for each checkpoint
        y += 2
        if previous == None: # First checkpoint doesn't need to be verified
            # Normal Mode
            checkpoints_lines.append(f"execute if score #mode gamemode matches 0..1 in minecraft:{item['dimension']} positioned {x} {y} {z} as @a[distance=..2,tag=!{item['id']},tag=!bodyguard] run function race:checkpoints/{item['id']}")
            # Horse Mode
            checkpoints_lines.append(f"execute if score #mode gamemode matches 2 in minecraft:{item['dimension']} positioned {x} {y} {z} as @a[distance=..2,tag=!{item['id']},tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/{item['id']}")
        elif nxt == None: # Finish Line needs special treatment
            # Normal Mode
            checkpoints_lines.append(f"execute if score #mode gamemode matches 0..1 in minecraft:{item['dimension']} positioned {x} {y} {z} as @a[distance=..2,tag=!{item['id']},tag=!bodyguard] if score @s checkpoints >= #max checkpoints run function race:checkpoints/{item['id']}")
            checkpoints_lines.append(f"execute if score #mode gamemode matches 0..1 in minecraft:{item['dimension']} positioned {x} {y} {z} as @a[distance=..2,tag=!{item['id']},tag=!bodyguard] if score @s checkpoints < #max checkpoints run function race:notfinished")
            # Horse Mode
            checkpoints_lines.append(f"execute if score #mode gamemode matches 2 in minecraft:{item['dimension']} positioned {x} {y} {z} as @a[distance=..2,tag=!{item['id']},tag=!bodyguard,predicate=race:is_riding_horse] if score @s checkpoints >= #max checkpoints run function race:checkpoints/{item['id']}")
            checkpoints_lines.append(f"execute if score #mode gamemode matches 2 in minecraft:{item['dimension']} positioned {x} {y} {z} as @a[distance=..2,tag=!{item['id']},tag=!bodyguard,predicate=race:is_riding_horse] if score @s checkpoints < #max checkpoints run function race:notfinished")
        else: # All checkpoints after the first checkpoint, but before Finish Line
            # Normal Mode
            checkpoints_lines.append(f"execute if score #mode gamemode matches 0..1 in minecraft:{item['dimension']} positioned {x} {y} {z} as @a[distance=..2,tag=!{item['id']},tag=!bodyguard] run function race:checkpoints/verify/{item['id']}")
            # Horse Mode
            checkpoints_lines.append(f"execute if score #mode gamemode matches 2 in minecraft:{item['dimension']} positioned {x} {y} {z} as @a[distance=..2,tag=!{item['id']},tag=!bodyguard,predicate=race:is_riding_horse] run function race:checkpoints/verify/{item['id']}")
    with open("data/race/function/checkpoints.mcfunction", "w") as file:
        file.write("\n".join(checkpoints_lines))

    # Clear old checkpoints if any exist
    # clear_folder(CHECKPOINTS_PATH)
    # os.makedirs(f"{CHECKPOINTS_PATH}/verify")
    # os.makedirs(f"{CHECKPOINTS_PATH}/items")

    # Compile Reset Checkpoints Function
    reset_lines = ["scoreboard players set @a checkpoints 0", "advancement revoke @a everything"]
    for checkpoint in course["checkpoints"]:
        reset_lines.append(f"scoreboard players set #{checkpoint['id']} checkpoints 0")
        reset_lines.append(f"tag @e remove {checkpoint['id']}")
    with open("data/race/function/resetcheckpoints.mcfunction", "w") as file:
        file.write("\n".join(reset_lines))

def compile_setup_function(course):
    # Create Setup Directory
    os.makedirs("data/race/function/setup/", exist_ok=True)

    # Create Forceloading Function
    last_iteration_index = len(course["checkpoints"]) - 1 # Check the max amount of checkpoints and take away 1 to detect the finish line
    setup = [f"scoreboard players set #max checkpoints {last_iteration_index}"] # List of lines for the setup.mcfunction
    place_checkpoints = ["kill @e[type=item_display]", "kill @e[type=text_display]"] # List of lines for the place_checkpoints.mcfunction
    for i, checkpoint in enumerate(course["checkpoints"]):
        x, y, z = checkpoint["lodestone"] # Retrieve coordinates for each checkpoint
        setup.append(f"execute in minecraft:{checkpoint['dimension']} run forceload add {x} {z}") # Forceload each checkpoint area
        place_checkpoints.append(f"execute in minecraft:{checkpoint['dimension']} run setblock {x} {y} {z} lodestone replace") # Place lodestones
        if i == last_iteration_index: # If finish line is detected, use different text and color
            glow_color = "16777045"
            text_color = "yellow"
            text_name = "Finish Line"
        else:
            glow_color = "65280"
            text_color = "green"
            text_name = "Checkpoint"
        y += 3.1875 # Increase Y level for item and text displays
        # Text Display
        place_checkpoints.append(f"execute in minecraft:{checkpoint['dimension']} run summon text_display {x} {y} {z} " + "{Invulnerable:1b,alignment:\"center\",background:0,billboard:\"center\",default_background:1b,glow_color_override:0,height:0.0f,interpolation_duration:0,line_width:200,see_through:0b,shadow:0b,shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,text:{color:\"" + text_color + "\",text:\"" + text_name + "\"},text_opacity:-1b,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},view_range:0.99647886f,width:0.0f}")
        y += 0.4375
        # Item Display
        place_checkpoints.append(f"execute in minecraft:{checkpoint['dimension']} run summon item_display {x} {y} {z} " + "{Glowing:1b,Invulnerable:1b,Rotation:[0.0f,0.0f],billboard:\"center\",glow_color_override:" + glow_color + ",height:0.0f,interpolation_duration:0,item:{count:1,id:\"minecraft:nether_star\"},item_display:\"ground\",shadow_radius:0.0f,shadow_strength:1.0f,teleport_duration:0,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},view_range:1.0f,width:0.0f}")
    setup.append("schedule function race:setup/place_checkpoints 10s") # Schedule the place_checkpoints function after 10s
    # Write to files
    with open("data/race/function/setup/setup.mcfunction", "w") as file:
        file.write("\n".join(setup))
    with open("data/race/function/setup/place_checkpoints.mcfunction", "w") as file:
        file.write("\n".join(place_checkpoints))

#-------Constants-------
# Paths
ADVANCEMENTS_PATH = "data/race/advancement/checkpoints/"
CHECKPOINTS_PATH = "data/race/function/checkpoints/"

#-------Main-Routine-------
if __name__ == "__main__":
    # Import course from json
    path = input("Please input the path to your course here (or select a preset: main, reverse): ").lower()
    course = import_course(path)
    
    # compile_advancements(course)
    # compile_setup_function(course)
    compile_checkpoints(course)