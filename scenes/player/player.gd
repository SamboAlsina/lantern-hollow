class_name Player
extends CharacterBody2D

## Intentionally strong so the ramp and bounce are easy to feel.
## We can turn them down once you can actually notice them.

@export var move_speed := 70.0
@export var acceleration := 40.0
@export var friction := 90.0
@export var wall_bounce_speed := 220.0
@export var wall_recover_time := 0.22

@onready var _body: ColorRect = $Body

var _recover := 0.0


func _physics_process(delta: float) -> void:
	_recover = maxf(_recover - delta, 0.0)
	_body.scale = _body.scale.move_toward(Vector2.ONE, 8.0 * delta)

	var input_vector := Input.get_vector(
		"move_left", "move_right", "move_up", "move_down"
	)

	if _recover > 0.0:
		velocity = velocity.move_toward(Vector2.ZERO, friction * 0.6 * delta)
	elif input_vector.length_squared() > 0.0:
		velocity = velocity.move_toward(input_vector * move_speed, acceleration * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, friction * delta)

	move_and_slide()

	if _recover <= 0.0:
		_try_wall_bounce()


func _try_wall_bounce() -> void:
	if get_slide_collision_count() == 0:
		return

	var away := Vector2.ZERO
	for i in get_slide_collision_count():
		away += get_slide_collision(i).get_normal()
	if away.length_squared() == 0.0:
		return

	away = away.normalized()
	velocity = away * wall_bounce_speed
	_recover = wall_recover_time

	if absf(away.x) > absf(away.y):
		_body.scale = Vector2(0.45, 1.55)
	else:
		_body.scale = Vector2(1.55, 0.45)
