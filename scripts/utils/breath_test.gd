extends Node3D
@export var BrethIn: RaytracedAudioPlayer3D
@export var Brethout: RaytracedAudioPlayer3D
@export var Heartbeat: RaytracedAudioPlayer3D
@export var Death: RaytracedAudioPlayer3D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("hold_Breath"):
		BrethIn.play()
		await get_tree().create_timer(1.0).timeout
		Brethout.stop()
		await get_tree().create_timer(1.0).timeout
		Heartbeat.play()
		await Heartbeat.finished
		Death.play()
		await Death.finished
		get_tree().reload_current_scene()
	if Input.is_action_just_released("hold_Breath"):
		Brethout.play()
		BrethIn.stop()
		Heartbeat.stop()
