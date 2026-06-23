extends Node3D
@export var BrethIn: RaytracedAudioPlayer3D
@export var Brethout: RaytracedAudioPlayer3D
@export var Heartbeat: RaytracedAudioPlayer3D
@export var Death: RaytracedAudioPlayer3D
var isDead:bool = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("hold_Breath") && !isDead:
		BrethIn.play()
		Brethout.stop()
		Heartbeat.play()
		await Heartbeat.finished
		Death.play()
		isDead = true
		await Death.finished
		get_tree().reload_current_scene()
	if Input.is_action_just_released("hold_Breath") && !isDead:
		Brethout.play()
		BrethIn.stop()
		Heartbeat.stop()
