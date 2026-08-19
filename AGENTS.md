# Agent instructions (Cursor and Codex)

This repository is **Lantern Hollow**, a beginner Godot 4.7 GDScript vertical slice.

Read before editing:

- `README.md`
- `docs/PLAN.md` — current milestone and ship bar
- `docs/AI_WORKING_AGREEMENT.md` — how to help two brothers learn
- `docs/CONVENTIONS.md` — folders and GDScript
- `docs/EDITOR_VS_CODE.md` — scene vs script

## Project root

The Godot project root is **this folder** (`project.godot` here). Do not create another nested Godot project.

Engine on the original machine: Godot **4.7.2 stable**. Stay on 4.7.x.

## Current intended work

Default to the **next unfinished milestone** in `docs/PLAN.md`. As of setup, that is **Milestone 1** (player movement) after they confirm Play works.

Do **not** implement the whole game. Do **not** skip to enemies, HUD, or lighting unless the user names that milestone.

## Implementation rules

- GDScript only, typed, tabs
- Colocate `name.tscn` + `name.gd`
- Use existing input actions: `move_left`, `move_right`, `move_up`, `move_down`, `dash`, `interact`, `restart`
- Top-down 2D, 320×180, nearest-neighbor
- Placeholders over new art pipelines
- No C#, no extra autoloads before Milestone 7, no plugin stack

## After you change something

Tell the humans:

1. What files changed
2. What to do in the Godot editor (if anything)
3. Exact playtest for this milestone
4. What not to do yet

Append a short note to `docs/SESSION_LOG.md` when a sitting actually lands work.

## Git

Do not commit unless asked. Never commit `.godot/` or export binaries.
