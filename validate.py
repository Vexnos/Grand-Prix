import json
from shared_functions import checkpoints

seen = set()

with open("courses/destinations.json") as file:
  data = json.load(file)

for item in data.values():
  for checkpoint in item["checkpoints"]:
    assert checkpoint in checkpoints, checkpoint
    assert checkpoint not in seen
    seen.add(checkpoint)

for checkpoint in checkpoints:
  if checkpoint not in seen:
    print(checkpoint)
