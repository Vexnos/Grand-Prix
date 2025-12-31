'''
----------------------------------------
File: distance_saturation.py
Project: Distance and Saturation Testing
Date: 2025-12-31
Authors: Vexnos
Comments: ONLY FOR TESTING
----------------------------------------
'''
'''
foods = {
    "cookie": (2, 4, 32),
    "carrot": (3, 3.6, 32),
    "bread": (5, 6, 32),
    "cooked_salmon": (6, 9.6, 16),
    "cooked_beef": (8, 12.8, 24),
    "golden_apple": (4, 9.6, 3)
}

total = {
    "nutrition": 0,
    "saturation": 0
}

for food in foods:
    total["nutrition"] += (foods[food][0] * foods[food][2])
    total["saturation"] += (foods[food][1] * foods[food][2])

for i in total:
    print(f"{total[i]}")
'''

import json
from math import sqrt
from itertools import tee, islice, chain
from shared_functions import PORTALS

def previous_and_next(some_iterable):
    prevs, items, nexts = tee(some_iterable, 3)
    prevs = chain([None], prevs)
    nexts = chain(islice(nexts, 1, None), [None])
    return zip(prevs, items, nexts)

def calc_distance(x, y, z, x2, y2, z2):
    dx = x - x2
    dy = y - y2
    dz = z - z2
    distance = sqrt(abs(dx)**2 + abs(dz)**2)
    distance = sqrt(distance**2 + abs(dy)**2)
    return distance

with open("courses/crownpeak.json", "r") as file:
    course = json.load(file)

with open("courses/checkpoints.json", "r") as file:
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

distances = []
for previous, checkpoint, nxt in previous_and_next(course["checkpoints"]):
    if previous is None:
        x, y, z = course["start_coordinates"]
        x2, y2, z2 = nxt['lodestone']
        distance = calc_distance(x, y, z, x2, y2, z2)
        print(f"{course['start_description']} --> {checkpoint['name']}: {distance:.0f}m")
        distances.append(distance)
        continue
    if nxt is not None:
        if nxt["dimension"] != "overworld":
            data = PORTALS[nxt["dimension"]]
            x, y, z = checkpoint["lodestone"]
            x2, y2, z2 = data["lodestone"]
            distance = calc_distance(x, y, z, x2, y2, z2)
            print(f"{checkpoint['name']} --> {nxt['name']}: {distance:.0f}m")
            distances.append(distance)
            continue
        if checkpoint["dimension"] != "overworld":
            data = PORTALS[checkpoint["dimension"]]
            x, y, z = data["lodestone"]
            x2, y2, z2 = nxt["lodestone"]
            distance = calc_distance(x, y, z, x2, y2, z2)
            print(f"{checkpoint['name']} --> {nxt['name']}: {distance:.0f}m")
            distances.append(distance)
            continue
        x, y, z = checkpoint['lodestone']
        x2, y2, z2 = nxt['lodestone']
        distance = calc_distance(x, y, z, x2, y2, z2)
        print(f"{checkpoint['name']} --> {nxt['name']}: {distance:.0f}m")
        distances.append(distance)

total_distance = 0
for distance in distances:
    total_distance += distance
print("Total Distance: " + str(round(total_distance)) + "m")