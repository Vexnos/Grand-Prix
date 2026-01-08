# Ardonia Grand Prix
This datapack was developed to automate the backend of the Ardonia Grand Prix, running proudly since 2022.

### How to Install
1. Place the datapack in your `world/datapacks` folder.
2. Create a `<course>.json` file in the `courses` folder, view the Course Template section to see how they're structured.
3. Run the `checkpoints.py` script and input the path to your course when prompted.
4. Run `/reload` in your minecraft world.
5. Run `/function race:setup/setup` to setup the checkpoints, wait until a confirmation message appears.
6. Run `/function race:reset` to finalize the setup.
7. Run `/tag @s add admin` to give yourself the admin tag.
8. With all players online, run `/trigger start` to select the mode you want to play, when you select a mode, the race will start in 30 seconds.

### Course Template
`"name"` : An optional field, but helpful to for organisation.

`"start_description"` : Required for the name of the location of your start line.

`"start_coordinates"` : Simply x, y, and z coordinates in your world.

`"worldborder_center"` : Is only used before the race starts, it is simply to stop players escaping the start line before the race.

`"worldborder_size"` : Size of worldborder used to keep players from escaping before the race.

`"initial_items"` : A list of items to be given to players at the start of the race, any command can be entered here so long as it's valid in Minecraft.

`"checkpoints"` : A list of dictionaries storing the checkpoint id (check `courses/checkpoints.json` to see pre-defined checkpoint ids to enter here, only those ids are valid) and any items you want to give to players at that checkpoint. Your final checkpoint will be the finish line.
```
{
    "name": "<course_name>",
    "start_description": "<start_line_location_name>",
    "start_coordinates": [x, y, z],
    "worldborder_center": [x, z],
    "worldborder_size": 100,
    "initial_items": [
        "give @a diamond_pickaxe"
    ],
    "checkpoints": [
        {
            "id": "<checkpoint_id>",
            "items": [
                "give @a diamond_sword",
                "give @a cooked_beef 16"
            ]
        }
    ]
}
```