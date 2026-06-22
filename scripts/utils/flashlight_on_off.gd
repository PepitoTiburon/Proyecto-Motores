extends Node3D

@onready var light1 :=$SpotLight3D
@onready var light2 :=$SpotLight3D2
@export var sound : RaytracedAudioPlayer3D 
var Encendida:bool=false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("click_flashlight") && Encendida:
		light1.visible = false
		light2.visible = false
		sound.play()
		Encendida = false
	elif Input.is_action_just_pressed("click_flashlight") && !Encendida:
		light1.visible = true
		light2.visible = true
		sound.play()
		Encendida = true
