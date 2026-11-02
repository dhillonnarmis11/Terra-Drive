# Terra-Drive

**A 3D landscape and driving prototype built with Godot 4 and GDScript.**

Terra-Drive is a game-development project exploring vehicle movement, interactive collectibles, and a 3D environment. It brings together physics-based car controls, terrain, and environmental scenes in a playable prototype.

## Features

- **3D driving:** Accelerate, reverse, steer, and brake a vehicle using Godot's `VehicleBody3D` physics.
- **Smooth steering and camera tracking:** Gradual steering input and an interpolated follow camera.
- **Collectible coins:** Rotating coins detect contact, emit a collection signal, and disappear when picked up.
- **Coin management:** Separate scripts organize coin and collection-related logic.
- **Terrain and environment:** Includes the Zylann HTerrain add-on and dedicated rain and snow scenes.

## Game Screenshots
<img width="1456" height="782" alt="Screenshot 2026-11-02 at 4 44 44 PM" src="https://github.com/user-attachments/assets/bd363463-6f45-4e8e-b0b2-4c63891ee430" />
<img width="990" height="535" alt="Screenshot 2026-11-02 at 4 46 04 PM" src="https://github.com/user-attachments/assets/ed6cd219-c435-4383-a816-9bf63a2d7129" />
<img width="962" height="533" alt="Screenshot 2026-11-02 at 4 46 17 PM" src="https://github.com/user-attachments/assets/421c7385-c58e-479f-848b-a71f07b9accf" />
<img width="1406" height="772" alt="Screenshot 2026-11-02 at 4 47 07 PM" src="https://github.com/user-attachments/assets/79d7ddb5-a3e2-4586-a2b3-1d34e00e4c95" />
<img width="893" height="530" alt="Screenshot 2026-11-02 at 4 45 29 PM" src="https://github.com/user-attachments/assets/294e59cd-5ec7-4a95-8feb-221beb87aa24" />

## Built With

- **Godot Engine 4.4** — 3D game engine
- **GDScript** — gameplay and interaction scripting
- **VehicleBody3D** — vehicle physics
- **Zylann HTerrain** — terrain add-on

## Controls

| Action | Key |
| --- | --- |
| Accelerate | Up Arrow |
| Reverse | Down Arrow |
| Steer left | Left Arrow |
| Steer right | Right Arrow |
| Brake | Space |

The car script uses Godot's `ui_up`, `ui_down`, `ui_left`, and `ui_right` actions.

## Getting Started

1. Install [Godot 4.4](https://godotengine.org/download) or a compatible Godot 4 version.
2. Clone the repository:

   ```bash
   git clone https://github.com/dhillonnarmis11/Terra-Drive.git
   ```

3. Open Godot, select **Import**, and choose the `project.godot` file in the cloned folder.
4. Allow Godot to import the project resources and enable the included HTerrain plug-in if prompted.
5. Press **F6** to run the current scene or **F5** to run the project's main scene.

## Project Structure

```text
Terra-Drive/
├── project.godot          # Godot project settings and input mappings
├── world.tscn            # Main 3D world scene
├── player.tscn           # Player scene
├── player.gd             # Player logic
├── car.gd                # Vehicle movement, steering, braking, camera
├── coin.tscn             # Collectible coin scene
├── coin.gd               # Coin rotation and pickup detection
├── coin_manager.gd       # Coin management logic
├── rain.tscn             # Rain scene
├── snow.tscn             # Snow scene
├── zylann.hterrain/      # Terrain add-on
└── screenshots/          # Add gameplay images here
    ├── gameplay1.png
    ├── gameplay2.png
    └── gameplay3.png
```

## What I Practiced

This project provided hands-on experience with 3D scenes, GDScript, physics-based vehicle control, keyboard input handling, signal-driven interactions, camera interpolation, and organizing gameplay into reusable scenes and scripts.

## Project Status

**Prototype / learning project.** The repository contains the Godot source project rather than a packaged game release.

## Repository

[View Terra-Drive on GitHub](https://github.com/dhillonnarmis11/Terra-Drive)
