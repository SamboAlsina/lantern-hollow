# Lantern Hollow

A small pixel-art action/exploration **vertical slice** in **Godot 4.7** (GDScript).

Two brothers are learning game development by finishing one playable slice — not a commercial-sized game.

## What this first version includes

- A small playable area
- A player character with movement and a dash
- A light mechanic
- One enemy type
- Collectibles and a simple objective
- HUD, win/lose, and restart

That is the whole scope. Anything else waits.

## Open the project

1. Install / open **Godot 4.7.x stable** (this machine already has `4.7.2`).
2. In Godot: **Import** → choose this folder → open `project.godot`.
3. Press **Play** (F5). You should see the boot title screen.

This folder is a real Godot project. Cursor and Codex should use this directory as the workspace root.

## How we work

| Person / tool | Role |
| --- | --- |
| You (JS/React experience) | Code, Git, pairing with the AI, wiring systems |
| Your brother (strong game sense) | Feel, difficulty, level layout, “does this play well?” |
| Godot editor | Scenes, collision, tiles, animation, UI layout, lighting nodes |
| GDScript | Movement, dash, light rules, enemy behavior, score, win/lose |
| Cursor | Day-to-day pairing, teaching, small edits, debugging |
| Codex | Focused tasks from `AGENTS.md` / the current milestone |

Read next:

- [docs/PLAN.md](docs/PLAN.md) — milestones, tests, and when we ship
- [docs/EDITOR_VS_CODE.md](docs/EDITOR_VS_CODE.md) — what belongs in the editor vs scripts
- [docs/CONVENTIONS.md](docs/CONVENTIONS.md) — folders, naming, GDScript style
- [docs/AI_WORKING_AGREEMENT.md](docs/AI_WORKING_AGREEMENT.md) — how Cursor and Codex should help
- [docs/SESSION_LOG.md](docs/SESSION_LOG.md) — what we did, what we learned

## Controls (planned)

| Action | Keys |
| --- | --- |
| Move | WASD or arrows |
| Dash | Space |
| Interact | E |
| Restart | R |

Movement and dash are not playable yet. That is Milestone 1–3 in the plan.

## Git

This folder should be the Git repo. `main` should stay playable. After each milestone that actually runs, commit.

**On this Mac, `/usr/bin/git` is not usable yet** because Xcode Command Line Tools are missing. Install them (`xcode-select --install`), then in this folder:

```bash
git init
git add .
git commit -m "Initial Godot 4.7 project for Lantern Hollow"
```

We have not created a remote yet. Add GitHub/Cursor origin when you want to share between machines.

## Do not

- Build systems “for later”
- Add a second enemy, inventory, dialogue, or a world map
- Let the AI implement several milestones in one sitting
