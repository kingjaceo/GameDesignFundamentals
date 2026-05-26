# Video Game Design Fundamentals

Hello! Your task is to build a fully-functional game using the Godot game engine and a few prompts. 

See the **solutions** folder for solutions.

## **Setup:**
   1. **Download Godot:** [https://godotengine.org/](https://godotengine.org/)
   2. **Download Github Desktop** or **install git**
   3. Clone this repo into your own Projects directory

## Tasks:
0. **Game Engines, Scenes, and Nodes**
	a. Open Godot. *Import* the cloned repo as a project.
	b. There are several "views" or "panels", each of which is useful.
		* The **file tree viewer** (bottom left) shows the files in the project.
		* The **scene tree editor** (top left) shows the current **scene**: a **scene** can be thought of as a *composition* of *objects*. In Godot, *objects* are called *nodes*. The **scene viewer** (center) shows the current scene.
		* The **inspector** (right) allows you to edit the properties of nodes.
	c. Open **main.tscn**. This is a **scene**, a composable object composed of objects.
	d. You should see the **scene tree** in the top left and the **scene** itself in the center.
	e. Click the **Sprite2D** node in the scene tree. Notice the **inspector** on the right.
	f. Recolor the sprite by modifying its **Modulate** property under the **Visibility** section.
	g. Resize the sprite by clicking one of the red circle handles in the **scene viewer**. Modulate the color of the sprite in the **inspector** by scrolling to the **Visibility** section and changing the **Modulate** field.
	h. Press Ctrl+S (Cmd+S on a Mac) to save the scene as **main.tscn**.

1. Characters, Cameras, and Input:
	a. At the top of the **scene viewer**, press the plus to create a new scene. Select **2D Scene**. Rename the root node to "Player".
	b. Click the big **plus** in the top left of the scene tree editor. Search and select Sprite2D. Repeat with a Camera2D node.
	c. Load the Godot icon svg into the texture of the Sprite2D.
	d. Find **player.gd**. Click and drag **player.gd** onto the Player node.
	e. Save the scene (Ctrl+S) as **player.tscn** in your folder.
	f. Click back to the main scene. Find **player.tscn** in the **file tree viewer**. Drag it onto the main scene tree.
	g. Press the play button in the top right. Use the up arrow to move the player. Exit out.
	h. Click back to the Player scene. Click the script icon attached to the root Player node to begin editing the script.
	i. Edit the script to include handling for down, left, and right (just copy the code for handling "up").
		* Read more here: [https://docs.godotengine.org/en/4.6/tutorials/inputs/inputevent.html]([https://docs.godotengine.org/en/4.6/tutorials/inputs/inputevent.html])
	j. Press play and test your game!
	
	**Key Questions:**
	* Can you give an example of an object? What about something that isn't an object?
	* Can you explain what a scene is?
	* Can you give an example of a property? What about something that isn't a property?
	* What did you have to change in the **_process** function get what you want?
	* How do you move the player up vs down? Why?
