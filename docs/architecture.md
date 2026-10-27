# Technical Architecture

The project is organized around a small set of focused Godot scripts rather than one large controller. `game_manager.gd` owns shared progression state such as the score, area number, and checkpoint. `player.gd` handles movement and jumping, while `collectible.gd`, `hazard.gd`, and `checkpoint.gd` keep world interactions reusable.

The HUD listens to signals from the game manager, so gameplay systems can update the interface without directly depending on UI nodes. This keeps the project easy to extend with additional levels, new collectible types, or a save system.

## Main flow

1. The player explores the current area.
2. Collectibles increase the shared score.
3. Checkpoints update the respawn position.
4. Hazards return the player to the latest checkpoint.
5. The exit validates the objective before advancing the area.
