# Video Game Design Fundamentals

Hello! Your task is to build a fully-functional game using the Godot game engine and a few prompts. 

## **Setup:**
   1. **Download Godot:**
   2. **Download Github Desktop** or **install git**
   3. Clone this repo into your own Projects directory

## "Daily" Exercises:
   0. Game Engines, Scenes, and Nodes
      a. Open Godot
      b. There are several "views" or "panels", each of which is useful.
         * The **file tree** view (bottom left) shows the files in the project.
         * The **scene tree editor** (top left) shows the current **scene**: a **scene** can be thought of as a *composition* of *objects*. In Godot, *objects* are called *nodes*. The **scene viewer** (center) shows the current scene.
         * The **inspector** (right) allows you to edit the properties of nodes.
      c. Create a new 2D Scene in the **scene tree editor**. You'll see a **Node2D** in the scene. Rename this to "Main" by double-clicking on the Node2D node.
      d. Click the big **plus** in the top left of the scene tree editor. Search and select Sprite2D.
      e. Select the Sprite2D node in the scene tree. In the **inspector** (left) click the <empty> texture field. Click **Quick Load...**. Select the Godot icon svg.
      f. Resize the sprite by clicking one of the red circle handles in the **scene viewer**. Modulate the color of the sprite in the **inspector** by scrolling to the **Visibility** section and changing the **Modulate** field.
      g. Press Ctrl+S (Cmd+S on a Mac) to save the scene as **main.tscn**.
           
   1. Characters, Cameras, and Input:
      a. At the top of the **scene viewer**, press the plus to create a new scene. Select **2D Scene**. Rename the root node to "Player".
      b. Click the big **plus** in the top left of the scene tree editor. Search and select Sprite2D. Repeat with a Camera2D node.
      c. Load the Godot icon svg into the texture of the Sprite2D.
      d. Find and drag **player.gd** onto the Player node.
      e. Save the scene (Ctrl+S) as **player.tscn**.
      f. Click back to the main scene. Find **player.tscn** in the **file tree viewer**. Drag it into the main scene tree.
      g. Press the play button in the top right. Define the main scene as the main scene for the project. Use the up arrow to move the player. Exit out.
      h. Click back to the Player scene. Click the script icon attached to the root Player node to begin editing the script.
      i. Edit the script to include handling for down, left, and right (just copy the code for handling "up").
      j. Press play and test your game!
