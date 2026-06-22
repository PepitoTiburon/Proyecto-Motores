extends Node3D
@export var AudioInicio:RaytracedAudioPlayer3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	AudioInicio.play()
	await AudioInicio.finished
	get_tree().change_scene_to_file("res://scenes/levels/main_level/Main.tscn")
