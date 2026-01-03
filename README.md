# Ardonia Grand Prix
This datapack was developed to automate the backend of the Ardonia Grand Prix, running proudly since 2022.

### How to Install
1. Place the datapack in your `world/datapacks` folder.
2. Create a `players.json` file in the datapack root directory and structure as below:
```
[
    {
        "player": "<player_name>",
        "uuid": "<player_uuid>
    },
    {
        "player": "player2_name>",
        "uuid": "player2_uuid"
    },
    ...
]
```
3. Create a `<course>.json` file in the `courses` folder, view the included courses to see how they're structured.
4. Run the `checkpoints.py` script and input the path to your course when prompted.
5. Run `/reload` in your minecraft world.
6. Run `/function race:setup/setup` to setup the checkpoints, wait until a confirmation message appears.
7. Run `/function race:reset` to finalize the setup.
8. Run `/tag @s add admin` to give yourself the admin tag.
9. With all players online, run `/trigger start` to select the mode you want to play, when you select a mode, the race will start in 30 seconds.

### Credits
Thanks to *[Mathmagician8191](https://github.com/Mathmagician8191)* for helping create the `checkpoints.py` script.