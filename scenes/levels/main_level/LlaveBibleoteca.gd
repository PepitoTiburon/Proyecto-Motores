extends ObjetoInteractuable


# Called when the node enters the scene tree for the first time.
func react() -> void:
	$"../../../../Puerta".bloqueada = false
	self.queue_free()
