extends ObjetoInteractuable


# Called when the node enters the scene tree for the first time.
func react() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/Game_Over/Victory.tscn")
