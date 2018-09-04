# basicLoveSetup
My general setup for a small  LÖVE game.

Contains a basic workflow for multiple levels, a general Entity object, some simple utility functions, and a few common libraries.

The first level is loaded in main.lua and assigned to `current_level`. In each `love.update()` and `love.draw()`, the current level's corresponding functions are called. This setup is focused on games that will likely contain only a few levels, like a main menu, options, scores, and a few levels for the game itself. For more complex games, a better structure is highly recommended.

This setup also contains bump.lua (https://github.com/kikito/bump.lua), hump (https://github.com/vrld/hump), and a timer library (https://github.com/vrld/hump) that I use for timed coroutines.
