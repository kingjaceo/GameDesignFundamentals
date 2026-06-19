# Video Game Design Fundamentals

Hello! Your task is to build a fully-functional game using the Godot game engine and a few prompts. 

See the **solutions** folder for solutions.

## **Setup:**
   1. **Download Godot:** [https://godotengine.org/](https://godotengine.org/)
   2. **Download Github Desktop** or **install git**
   3. Clone this repo into your own Projects directory

## Tasks:

**Game Engines, Scenes, and Nodes:**
  1. Open Godot. *Import* the cloned repo as a project.
  2. There are several "views" or "panels", each of which is useful.
	 - The **file tree viewer** (bottom left) shows the files in the project.
	 - The **scene tree editor** (top left) shows the current **scene**: a **scene** can be thought of as a *composition* of *objects*. In Godot, *objects* are called *nodes*. The **scene viewer** (center) shows the current scene.
	 - The **inspector** (right) allows you to edit the properties of nodes.
	
  3. Open **main.tscn**. This is a **scene**, a composable object composed of objects.
  4. You should see the **scene tree** in the top left and the **scene** itself in the center.
  5. Click the **Sprite2D** node in the scene tree. Notice the **inspector** on the right.
  6. Recolor the sprite by modifying its **Modulate** property under the **Visibility** section.
  7. Resize the sprite by clicking one of the red circle handles in the **scene viewer**. Modulate the color of the sprite in the **inspector** by scrolling to the **Visibility** section and changing the **Modulate** field.
  8. Press Ctrl+S (Cmd+S on a Mac) to save the scene as **main.tscn**.

**Characters, Cameras, and Input:**
  1. At the top of the **scene viewer**, press the plus to create a new scene. Select **2D Scene**. Rename the root node to "Player".
  2. Click the big **plus** in the top left of the scene tree editor. Search and select Sprite2D. Repeat with a Camera2D node.
  3. Load the Godot icon svg into the texture of the Sprite2D.
  4. Find **player.gd**. Click and drag **player.gd** onto the Player node.
  5. Save the scene (Ctrl+S) as **player.tscn** in your folder.
  6. Click back to the main scene. Find **player.tscn** in the **file tree viewer**. Drag it onto the main scene tree.
  7. Press the play button in the top right. Use the up arrow to move the player. Exit out.
  8. Click back to the Player scene. Click the script icon attached to the root Player node to begin editing the script.
  9. Edit the script to include handling for down, left, and right (just copy the code for handling "up").
	 - Read more here: [https://docs.godotengine.org/en/4.6/tutorials/inputs/inputevent.html]([https://docs.godotengine.org/en/4.6/tutorials/inputs/inputevent.html])
  10. Press play and test your game!
  11. **Key Questions:**
	* Can you give an example of an object? What about something that isn't an object?
    * Can you explain what a scene is?
	* Can you give an example of a property? What about something that isn't a property?
	* What did you have to change in the **_process** function get what you want?
	* How do you move the player up vs down? Why?

**Tilemaps:**
   0. (optional) Find a free tile sheet online.
   1. Add a TileMapLayer node to the main scene. Make sure it is ABOVE the player in the scene tree.
   2. Select the TileMapLayer node in the scene tree. Find the "Tile Set" property in the Inspector. Click the field to add a new TileSet.
   3. Click the new TileSet in the Inspector to expand its properties. Change the "Tile Size" to match the size of your tiles.
   4. At the bottom of the Engine, youll see TileMap and TileSet tabs. Click the TileSet tab.
   5. Drag your tile sheet into the sub-window on the left.Let the editor automatically create tiles. You should see the tile sheet divided into tiles.
   6. Click the TileMap tab and switch to 2D view at the top.
   7. Select the Pencil option and any tile. Start drawing tiles on the scene!

**Collisions:**
   1. Select the TileMapLayer, and in the Inspector, expand "Physics Layers" and click Add Element.
   2. Back in the TileSet tab at the bottom, select "Paint" and select Physics Layer 0. Paint any tiles you want to be "Walls".
   3. Go draw walls.
   4. In the Player scene, change the root node to a CharacterBody2D.
   5. We now need to change the script substantially to use physics, rather than directly moving the player. Instead of changing *position*, we will set *velocity*, call **move_and_slide()**, and reset *velocity* back to zero.
   6. If you did everything right, you should be able to move around inside your tilemap, but you won't be able to go through walls!

**Basic AI:**
   1. Create a new Scene called "Enemy" or whatever you want. It should be a CharacterBody2D so that it obeys physics.
   2. (optional) Find a sprite for your enemy.
   3. Set up the sprite, the collision shape, and an empty script for behavior.
   4. The script will work like this: the enemy moves up for 3 seconds then down for 3 seconds.
