extends ObjetoInteractuable
signal desbloquearSotano

# Called when the node enters the scene tree for the first time.
func react() -> void:
	emit_signal("desbloquearSotano")
	self.queue_free()
