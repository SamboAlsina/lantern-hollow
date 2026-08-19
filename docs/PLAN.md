# Project plan

Lantern Hollow is a **focused vertical slice**. Success is a short, readable, replayable loop — not content volume.

Engine: **Godot 4.7 stable**, **GDScript**, 2D pixel art.  
Internal resolution: **320×180**, window **1280×720**, integer scale, nearest-neighbor filter.

## Design pitch (small on purpose)

You carry a lantern through a dark hollow. Light lets you see and makes you visible. Darkness hides you but you cannot see well. One enemy type hunts light. Collect enough **embers** and reach the **shrine** to win. Getting caught, or letting the lantern die (if we keep a fuel limit), is a loss. Press **R** to restart.

If fuel makes Milestone 4 too big, drop fuel and keep a simple on/off or radius light. Finish the loop first.

## Learning sequence

Each milestone is one sitting (about 1–2 hours). Play it. Then stop.

| # | Goal | You learn | Editor | Code |
| --- | --- | --- | --- | --- |
| 0 | Project opens, Play shows boot screen | Godot project, scenes, F5 | Import project, look around | — |
| 1 | Player moves in an empty room | `CharacterBody2D`, input, delta | Player scene, collision capsule | `player.gd` movement |
| 2 | A tiny tiled hollow + camera | TileMap layers, camera | Draw walls/floor, Camera2D | Almost none |
| 3 | Dash with cooldown | State, timers, juice | Optional dust placeholder | dash in `player.gd` |
| 4 | Light mechanic | 2D lights, visibility | PointLight2D / LightOccluder | lantern toggle or fuel |
| 5 | One enemy | detection, chase, hit | Enemy scene, collision | `enemy.gd` |
| 6 | Embers + shrine objective | areas, signals, counting | Place pickups, shrine | collect + win condition |
| 7 | HUD, win/lose, restart | UI, game state | HUD + result labels | `game_state` autoload |
| 8 | Polish pass + export | shipping | Tune layout, tiny SFX | Bug fixes only |

Do **not** skip ahead to enemies before movement feels decent. Movement is the game.

## Milestone tests (play, do not just compile)

**0 — Boot**  
Godot opens this folder. F5 shows *LANTERN HOLLOW*. Output prints a boot message.

**1 — Walk**  
WASD/arrows move a placeholder body. It stops on walls. No sliding through the collision shape.

**2 — Place**  
A room exists (bigger than the screen). Camera follows the player. You cannot walk out of the hollow.

**3 — Dash**  
Space dashes along move direction (or facing). Short burst, then cooldown. Cannot dash forever.

**4 — Light**  
Darkness is readable. Light reveals nearby tiles. Brother can answer: “I understand why I would turn this on or off.”

**5 — Threat**  
One enemy. It can catch you. You can avoid it. Death is obvious.

**6 — Goal**  
You can pick up embers. A counter goes up. Reaching the shrine with enough embers wins.

**7 — Loop**  
Win screen, lose screen, R restarts the same slice. HUD shows what you need.

**8 — Ship**  
A stranger (or your brother, cold) can play start-to-win without a coach. Export runs on this Mac.

## When it is actually ready to ship

Ship the slice when **all** of these are true:

1. A new player can finish a win in a few minutes.
2. Lose and restart work without restarting Godot.
3. Movement and dash feel intentional (brother sign-off).
4. Light is not a decorative extra — it changes how you move.
5. One enemy is fair enough to learn, not a random insta-kill.
6. No debug prints required to know the objective.
7. Pixel art can still be rectangles/placeholders **if** silhouettes read. Art polish is optional for v0.1.
8. You exported a build once, so “Play from editor” is not the only way it exists.

If you want a nicer v0.2 later: better sprites, one extra room, sound, particles. That is **after** v0.1 ships.

## Explicitly postponed

- Second enemy type, bosses, AI groups
- Inventory, shops, crafting
- Dialogue, cutscenes, lore dumps
- Procedural maps, multiple biomes
- Save files / settings menus (optional tiny options later)
- Multiplayer, mobile, Steam
- Shader-heavy looks, 3D
- Perfect animation and a large soundtrack

## Collaboration

- **Same computer:** pair. Brother drives feel (“dash is too long”), you drive editor/code.
- **Two computers:** `main` always runs. Short branches named `m3-dash`, merge when the test above passes.
- **Commits:** one milestone (or one bugfix) per commit. Message says *why* (“dash now uses cooldown so it cannot be held”).
- **Art:** placeholders first (ColorRect / simple PNG). Replace in place. Do not block systems on final pixels.

## Cursor vs Codex

- **Cursor:** teaching, exploring scenes, iterating the *current* milestone, explaining Godot vs React.
- **Codex:** “implement Milestone N as specified in PLAN.md; do not start N+1.”
- Neither tool should generate the whole game in one pass.

## Next sitting

Milestone 0 is done when you have pressed Play.  
Milestone 1 is next: a `CharacterBody2D` player in `scenes/player/` inside a box in `scenes/levels/`.
