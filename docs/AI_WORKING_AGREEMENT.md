# AI working agreement

This project is how two beginners **learn**, not a race to generate a full game.

## Who you are helping

- An experienced JavaScript/React developer, new to games and Godot
- A less technical brother with strong game sense (feel, fun, fairness)

Explain Godot in those terms. Do not assume Unity or Unreal knowledge.

## Default behavior

1. Inspect the repo before adding files.
2. Work **one milestone** from [PLAN.md](PLAN.md).
3. Teach: what changed, why, what to test in the editor.
4. Keep the slice small. Postpone extras.
5. Never overwrite or delete user files without saying what you found.

## Cursor

Use Cursor for:

- Pairing and questions (“why `_physics_process`?”)
- Implementing the current milestone in small diffs
- Debugging a scene that does not run
- Updating `SESSION_LOG.md` at the end of a sitting

Do not use Cursor to “just build the game.”

## Codex

Use Codex for bounded jobs, for example:

> In `game-sam`, implement PLAN.md Milestone 3 (dash + cooldown) on the existing player. Do not add enemies, HUD, or a new level.

Paste the relevant PLAN section. Require a playtest checklist in the reply.

## Both tools must

- Treat `game-sam` as the Godot project root (`project.godot` lives here)
- Colocate `something.tscn` + `something.gd`
- Use typed GDScript and existing input actions
- Leave pixel-art placeholders until we ask for art
- Update docs when the plan or conventions actually change

## Both tools must not

- Implement multiple milestones at once
- Add autoloads, plugin frameworks, or state machines before they are needed
- Introduce C#, shader graphs, or extra render pipelines
- Rewrite `project.godot` casually (Input Map and display settings are easy to smash)
- Commit unless we ask

## When to ask us

Ask only if a choice **blocks** the milestone or **changes the game**:

- Top-down vs side-view (we are defaulting to **top-down**)
- Light as fuel vs toggle
- What “caught” means (touch vs entering a light cone)

Otherwise pick the simple option and write it in the session log.

## Session close-out

End a productive sitting with:

1. What shipped
2. How to play/test it
3. What the brother should judge (feel)
4. Next milestone name
5. A short [SESSION_LOG.md](SESSION_LOG.md) entry
