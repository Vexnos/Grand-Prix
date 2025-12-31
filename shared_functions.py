import json
from math import sqrt

def get_distance(location, new_location):
    vertical = new_location[1] - location[1]
    vertical = -vertical / 2 if vertical < 0 else vertical * 3
    return sqrt((location[0] - new_location[0]) ** 2 + (location[2] - new_location[2]) ** 2) + vertical

def get_length(positions):
    start, *remainder = positions
    location = start["coords"]
    distance = 0
    for checkpoint in remainder:
        new_location = checkpoint["coords"]
        distance += get_distance(location, new_location)
        location = new_location
    return distance

def pretty_print_route(positions):
    start, *remainder = positions
    location = start["coords"]
    checkpoint_name = start["id"]
    distance = 0
    for checkpoint in remainder:
        new_location = checkpoint["coords"]
        new_name = checkpoint["id"]
        leg_distance = get_distance(location, new_location)
        print(f"{checkpoint_name} -> {new_name} {leg_distance:.0f}m")
        distance += leg_distance
        location = new_location
        checkpoint_name = new_name
    print(f"Total distance: {distance:.0f}m")

def get_data(id, has_fire=False):
    place = checkpoints[id]
    checkpoint = {
        "id" : id,
        "coords" : place["lodestone"],
        "has_fire" : has_fire,
    }
    if "dimension" in place:
        checkpoint["coords"] = PORTALS[place["dimension"]]["lodestone"]
    return checkpoint

# Import course from json
def import_course(path):
    preset_courses = {
        "main": "courses/main.json",
        "reverse": "courses/reverse.json",
        "crownpeak": "courses/crownpeak.json"
    }
    # Check the user hasn't entered nothing
    if len(path) == 0:
        print("You have not specificed a path, quitting...")
        return
    # Check if path is in presets dictionary
    if path in preset_courses:
        path = preset_courses[path]
    with open(path, "r") as file:
        course = json.load(file)
    with open("courses/checkpoints.json") as file:
        checkpoint_data = json.load(file)
    checkpoints = {}
    for item in checkpoint_data:
        checkpoints[item["id"]] = item
    for checkpoint in course["checkpoints"]:
        checkpoint_data = checkpoints[checkpoint["id"]]
        for key in "name", "description", "advancement_icon", "lodestone":
            checkpoint[key] = checkpoint_data[key]
        checkpoint["dimension"] = checkpoint_data["dimension"] if "dimension" in checkpoint_data else "overworld"
        for key in "custom_model_data", "potion_contents", "banner_patterns":
            if key in checkpoint_data:
                checkpoint[key] = checkpoint_data[key]
    return course

PORTALS = {
    "the_nether": {
        "name": "Nether Portal",
        "color": "dark_red",
        "lodestone": [-495, 101, -221]
    },
    "the_end": {
        "name": "Stronghold",
        "color": "dark_purple",
        "lodestone": [-572, 77, 96]
    }
}

with open("courses/checkpoints.json") as file:
    checkpoint_data = json.load(file)

checkpoints = {}
for checkpoint in checkpoint_data:
    checkpoints[checkpoint["id"]] = checkpoint
