extends MeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		self.queue_free()
