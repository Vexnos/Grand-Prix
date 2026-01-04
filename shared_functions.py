import json
import random
import requests
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
        distance += get_distance(location, new_location) + checkpoint["extra_distance"]
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
        leg_distance = get_distance(location, new_location) + checkpoint["extra_distance"]
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
        "dimension" : "overworld",
        "extra_distance" : 0,
        "has_fire" : has_fire,
    }
    if "dimension" in place:
        checkpoint["dimension"] = place["dimension"]
        dimension_data = PORTALS[place["dimension"]]
        checkpoint["coords"] = dimension_data["lodestone"]
        outgoing_leg = get_distance(dimension_data["entry_portal"], place["lodestone"])
        return_leg = get_distance(place["lodestone"], dimension_data["exit_portal"])
        checkpoint["extra_distance"] = outgoing_leg + return_leg
    return checkpoint

def get_checkpoint_locations(course):
    checkpoint_locations = [{
        "id" : "start",
        "name" : course["start_description"],
        "coords" : course["start_coordinates"],
        "dimension" : "overworld",
        "has_fire" : False,
    }]
    checkpoint_locations += [get_data(checkpoint["id"]) for checkpoint in course["checkpoints"]]
    return checkpoint_locations

# Import course from json
def import_course():
    preset_courses = {
        "main": "courses/main.json",
        "legacy": "courses/main_legacy.json",
        "original": "courses/original.json",
        "main_random": "courses/main_randomized.json",
        "reverse": "courses/reverse.json",
        "crownpeak": "courses/crownpeak.json"
    }
    presets = ", ".join(preset_courses)
    message = f"Please input the path to your course here (or select a preset: {presets}): "
    path = input(message).lower()
    # Check the user hasn't entered nothing
    if len(path) == 0:
        print("You have not specificed a path, quitting...")
        return
    # Check if path is in presets dictionary
    if path in preset_courses:
        path = preset_courses[path]
    with open(path, "r") as file:
        course = json.load(file)
    with open("courses/destinations.json") as file:
        destinations = json.load(file)
    for checkpoint in course["checkpoints"]:
        if "type" in checkpoint and checkpoint["type"] == "random":
            checkpoint_options = destinations[checkpoint["id"]]["checkpoints"]
            checkpoint["id"] = random.choice(checkpoint_options)
        checkpoint_data = checkpoints[checkpoint["id"]]
        for key in "name", "description", "advancement_icon", "lodestone":
            checkpoint[key] = checkpoint_data[key]
        checkpoint["dimension"] = checkpoint_data["dimension"] if "dimension" in checkpoint_data else "overworld"
        for key in "custom_model_data", "potion_contents", "banner_patterns":
            if key in checkpoint_data:
                checkpoint[key] = checkpoint_data[key]
    return course

# Retrieve player UUID
def get_uuid(profile):
    mojang_api = f"https://api.mojang.com/users/profiles/minecraft/{profile}"
    uuid = requests.get(mojang_api)

    # Check for valid uuid retrieval and return if successful
    if uuid.status_code == 200:
        player_data = uuid.json()
        return player_data['id']
    else:
        print(f"Could not find user {profile}. Status code: {uuid.status_code}")

PORTALS = {
    "the_nether": {
        "name": "Nether Portal",
        "color": "dark_red",
        "lodestone": [-495, 101, -221],
        "entry_portal": [-204, 75, -1143],
        "exit_portal": [-204, 75, -1143]
    },
    "the_end": {
        "name": "Stronghold",
        "color": "dark_purple",
        "lodestone": [-572, 77, 96],
        "entry_portal": [-1113, 57, -794],
        "exit_portal": [-1083, 54, -524]
    }
}

with open("courses/checkpoints.json") as file:
    checkpoint_data = json.load(file)

checkpoints = {}
for checkpoint in checkpoint_data:
    checkpoints[checkpoint["id"]] = checkpoint
