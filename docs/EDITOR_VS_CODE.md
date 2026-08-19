# Editor vs code

Godot is not a React app. The `.tscn` scene is the tree of nodes. A `.gd` script is behavior attached to **one** node. You compose games in the editor, then teach nodes how to act in code.

## Do this in the Godot editor

- Create scenes (`player.tscn`, `moth.tscn`, `hollow_01.tscn`, `hud.tscn`)
- Pick node types (`CharacterBody2D`, `TileMapLayer`, `Camera2D`, `PointLight2D`, `Area2D`)
- Draw collision shapes; paint tiles; place enemies and embers
- AnimationPlayer / sprite frames
- UI layout (anchors, labels, bars)
- Input Map (already started in `project.godot`)
- Lighting and occluders
- Tune exported numbers *after* they exist (speed, dash distance) if you prefer the Inspector

If it is **spatial, visual, or hierarchical**, it belongs in a scene.

## Do this in GDScript

- Read input and move the body (`velocity`, `move_and_slide`)
- Dash timing and cooldown
- Lantern rules (on/off, fuel, radius)
- Enemy detect / chase / catch
- Counting embers, win and lose
- Restart (`get_tree().reload_current_scene()` or a tiny game state autoload)
- Connecting to signals in code when the pairing is easier to read than the editor

If it is **rules over time**, it belongs in a script.

## Do not fight the engine

Coming from React:

| React habit | Godot equivalent |
| --- | --- |
| Components | Scenes (reuse by instancing) |
| Props | Exported variables (`@export`) |
| State | Variables on the node + sometimes an autoload |
| useEffect | `_ready`, signals, `_process` / `_physics_process` |
| CSS layout | Control anchors (UI only). Game world is nodes in 2D space |
| npm package for everything | Built-in nodes first. Addons only if we must |

**Physics movement** goes in `_physics_process` (fixed step), not `_process`.

**One script, one job.** Player script does not spawn the HUD. Enemy script does not own the win screen.

## Autoloads (use sparingly)

Add a `GameState` autoload only at Milestone 7, when HUD and restart need a shared score/lives flag. Until then, keep values on the level or player.

## Pixel art rules for this project

- Design at **320×180**
- Sprite filter: **Nearest** (already set in `project.godot`)
- Integer window scale
- Snap 2D transforms to pixels (already on)
- 16×16 tiles are a good default when we paint the hollow
