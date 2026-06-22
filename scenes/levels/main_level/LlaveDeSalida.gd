extends ObjetoInteractuable


# Called when the node enters the scene tree for the first time.
func react() -> void:
	$"../PuertaDeSalida".bloqueada = false
	self.queue_free()
