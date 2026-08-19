# Conventions

## Folders

```
game-sam/
  project.godot          # Godot project (keep this as the root)
  scenes/
    boot/                # Title / first scene
    player/              # player.tscn + player.gd (colocate)
    enemies/             # one enemy scene + script
    levels/              # the hollow
    ui/                  # HUD, win, lose
  assets/
    sprites/
    tiles/
    audio/
    fonts/
  docs/                  # humans + AI
  export/                # local builds, binaries gitignored
```

Scripts live **next to** their scene, not in a separate `scripts/` tree. That matches how Godot thinks.

## Naming

- Files: `snake_case.tscn`, `snake_case.gd`, `ember.png`
- Nodes: `PascalCase` (`Player`, `LanternLight`, `Ember`)
- `class_name Player` on the player script once the scene exists
- Actions: already `move_left`, `move_right`, `move_up`, `move_down`, `dash`, `interact`, `restart`

## GDScript

- Godot 4 static types: `func _ready() -> void:`
- Tabs (Godot default)
- `@export var move_speed := 70.0` for numbers you will tune in the Inspector
- No singletons until Milestone 7
- No “manager of everything” node

```gdscript
# Prefer
velocity = input_vector * move_speed
move_and_slide()

# Avoid
position += input_vector * move_speed  # skips physics/collision
```

## Git

- Commit `.import` and `.uid` files when Godot creates them
- Never commit `.godot/`
- `main` plays
- Do not commit exported `.zip` / `.app` / `.pck`

## AI edits

- Change the **current milestone** only
- Prefer editing existing scenes over inventing new frameworks
- After code changes, tell us what to click in Godot to verify
