# 3D Exploration Game

A compact 3D exploration game built in Godot. The player explores three connected areas, collects energy shards, avoids hazards, reaches checkpoints, and completes each area by finding the exit beacon.

## What I built

- Player movement and jump controls in GDScript
- Third-person camera that follows the player
- Three level areas with increasing difficulty
- Collectibles and a score counter
- Checkpoints that update the respawn position
- Hazards that reset the player to the latest checkpoint
- Exit beacon and level-complete state
- HUD with score, area, and objective text

## Tools

- Godot 4
- GDScript
- Blender or other 3D modeling software can be used for custom assets

## Controls

- `WASD` — move
- `Space` — jump
- `Esc` — release the mouse

## Project ownership

I handled the project from scene setup through scripting, gameplay iteration, and testing. My main focus was making the controls feel responsive and keeping the gameplay loop easy to understand.

## Documentation

- [Technical architecture](docs/architecture.md)
- [Gameplay and controls](docs/gameplay-and-controls.md)
- [Autodesk CFD case study](docs/autodesk-cfd-case-study.md)
- [Panda3D development notes](docs/panda3d-notes.md)

## Planned improvements

- Add sound effects and ambient music
- Replace placeholder geometry with custom art assets
- Add a save system for completed areas
