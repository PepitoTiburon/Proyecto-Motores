extends Node3D
@export var audioVictoria:RaytracedAudioPlayer3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	audioVictoria.play()
	await audioVictoria.finished
	get_tree().quit()
