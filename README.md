# Ardonia Grand Prix
This datapack was developed to automate the backend of the Ardonia Grand Prix, running proudly since 2022.

### How to Install
1. Place the datapack in your `world/datapacks` folder.
2. Create a `<course>.json` file in the `courses` folder, view the included courses to see how they're structured.
3. Run the `checkpoints.py` script and input the path to your course when prompted.
4. Run `/reload` in your minecraft world.
5. Run `/function race:setup/setup` to setup the checkpoints, wait until a confirmation message appears.
6. Run `/function race:reset` to finalize the setup.
7. Run `/tag @s add admin` to give yourself the admin tag.
8. With all players online, run `/trigger start` to select the mode you want to play, when you select a mode, the race will start in 30 seconds.

### Credits
Thanks to *[Mathmagician8191](https://github.com/Mathmagician8191)* for helping create the `checkpoints.py` script.