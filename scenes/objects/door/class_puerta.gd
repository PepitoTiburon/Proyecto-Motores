class_name Puerta
extends ObjetoInteractuable
@export var bloqueada:bool = false
var esta_abierta: bool = false
var angulo_apertura: float = deg_to_rad(90) # Convierte 90 grados a radianes

func react() -> void:
	var tween = create_tween()

	if not esta_abierta && !bloqueada:
		# Rota a 90 grados en el eje Y
		tween.tween_property(self, "rotation:y", rotation.y + angulo_apertura, 0.5)
		esta_abierta = true
	elif !bloqueada && esta_abierta:
		# Vuelve a la posición original
		tween.tween_property(self, "rotation:y", rotation.y - angulo_apertura, 0.5)
		esta_abierta = false
