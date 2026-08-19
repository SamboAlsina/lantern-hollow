# Session log

Newest entries at the top. Write a few bullets after each sitting.

---

## 2026-08-19 — Milestone 1 feel: ramp + wall bounce

**Who:** Brother (feel).

**What changed:** Walk speed eases in instead of snapping to full speed. First bump into a wall gives a tiny knock-back. Holding into a wall should not vibrate.

**Playtest:** Start → Enter → walk, tap a wall, then lean on a wall.

**Still open:** Too much / too little ramp? Bounce too big / too small?

---

## 2026-08-19 — Milestone 1: walk (feel pass)

**Who:** Brother (feel) + Cursor.

**What shipped:** A gold square you can walk. Brown walls around the room plus one block to bump into. Title screen still comes first.

**How to play:**

1. Open the project in Godot and press Play
2. Press Enter or E
3. Walk with WASD or arrows
4. Hit the edges and the square in the middle

**Feel questions (brother):**

- Too slow, too fast, or fine?
- Character too small / too big for the room?
- Sliding along walls feel okay, or sticky/wrong?
- Diagonal walking feel fair?

**Not in this build:** dash, lantern, enemies, camera. That is next milestones.

**Next:** If walking feels good enough, Milestone 2 (a bigger hollow + camera). If not, we change `move_speed` (currently 70) and try again.

---

## 2026-08-19 — Project setup (Milestone 0, files only)

**Who:** Cursor (project lead setup), not yet playtested together in the editor.

**What we found:** `/Users/samuelalsina/Projects/game` was empty. No existing Godot files, docs, or Git history to preserve. Created a nested project folder `game-sam` so this stays a clean Godot root.

**What we set up:**

- Godot 4.7 project: 320×180 pixel viewport, integer scale, nearest-neighbor
- Boot scene (`scenes/boot/`) as the main scene
- Input actions for move / dash / interact / restart (not used in gameplay yet)
- Folder layout, `.gitignore`, docs, `AGENTS.md`, Cursor rules
- Git config files (`.gitignore`, `.gitattributes`). `git init` could not run: Xcode Command Line Tools are not installed on this Mac.

**How to verify:**

1. Open Godot 4.7.2 → Import `game-sam`
2. Press Play
3. Confirm the gold title **LANTERN HOLLOW** and the Output line `Lantern Hollow boot scene loaded.`

**Teaching notes:**

- This folder **is** the game. `project.godot` is the equivalent of a package root.
- Scenes (`.tscn`) are node trees; scripts (`.gd`) are behavior. We did not build the player yet on purpose.
- Your brother does not need to read `project.godot`. He needs Play to work.

**Next:** Milestone 1 — placeholder player that walks and collides. See [PLAN.md](PLAN.md).

**Open choice (not blocking):** Light-as-fuel vs simple toggle. Decide at the start of Milestone 4.
