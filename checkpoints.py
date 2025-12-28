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
        "reverse": "courses/reverse.json"
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
    pass

def compile_setup_function(course):
    pass

#-------Constants-------
# Paths
ADVANCEMENTS_PATH = "data/race/advancement/checkpoints/"
CHECKPOINTS_PATH = "data/race/function/checkpoints/"
ITEMS_PATH = "data/race/function/checkpoints/items/"

#-------Main-Routine-------
if __name__ == "__main__":
    # Import course from json
    path = input("Please input the path to your course here (or select a preset: main, reverse): ").lower()
    course = import_course(path)
    
    compile_advancements(course)