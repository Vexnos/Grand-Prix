import json
import random
from math import exp
from shared_functions import import_course, get_length, get_checkpoint_locations, get_distance

COST_PER_M = 0.042

def matches(modifier, checkpoint):
    match modifier["type"]:
        case "x_above":
            return dimension == "overworld" and checkpoint["coords"][0] > modifier["value"]
        case "x_below":
            return dimension == "overworld" and checkpoint["coords"][0] < modifier["value"]
        case "y_above":
            return dimension == "overworld" and checkpoint["coords"][1] > modifier["value"]
        case "y_below":
            return dimension == "overworld" and checkpoint["coords"][1] < modifier["value"]
        case "z_above":
            return dimension == "overworld" and checkpoint["coords"][2] > modifier["value"]
        case "z_below":
            return dimension == "overworld" and checkpoint["coords"][2] < modifier["value"]
        case "dimension":
            return dimension == modifier["value"]
        case "not_dimension":
            return dimension != modifier["value"]
        case "all":
            return all(matches(modifier, checkpoint) for modifier in modifier["value"])
        case unknown:
            print(f"Unknown modifier type: {unknown}")
            quit()

name = input("Course file: ")

course = import_course(name)

checkpoint_locations = get_checkpoint_locations(course)
total_distance = get_length(checkpoint_locations)

with open("food.json") as file:
    food_data = json.load(file)

food = {}
choices = []

for item in food_data:
    name = item["name"]
    food[name] = item
    choices.append(name)

food_balance = 34

start, *remainder = checkpoint_locations
previous = start
distance = 0
for checkpoint in remainder:
    new_location = checkpoint["coords"]
    progress = distance / total_distance
    weights = []
    for item in food_data:
        weight = item["weight"] * exp(0.25 * (progress - 0.5) * item["quality"])
        dimension = previous["dimension"]
        for modifier in item["modifiers"]:
            if matches(modifier, previous):
                weight *= modifier["multiplier"]
        weights.append(weight)

    food_type = random.choices(choices, weights)[0]

    leg_distance = get_distance(previous["coords"], new_location) + checkpoint["extra_distance"]
    distance += leg_distance
    food_balance -= COST_PER_M * leg_distance

    print(f"Food balance: {food_balance}")

    if random.random() * 20 > food_balance:
        quality = food[food_type]["quality"]
        food_quantity = min(int(random.randint(100, 200) / quality), 64)
        food_balance += food_quantity * quality

        print(f"{food_type} {food_quantity}")

    print(checkpoint["id"])

    previous = checkpoint
