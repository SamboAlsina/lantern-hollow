extends Control

## Title screen. Enter / E loads the practice room.


func _ready() -> void:
	print("Lantern Hollow boot scene loaded.")


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") or event.is_action_pressed("interact"):
		get_tree().change_scene_to_file("res://scenes/levels/practice_room.tscn")
