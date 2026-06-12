class_name Puerta
extends ObjetoInteractuable

var esta_abierta: bool = false
var angulo_apertura: float = deg_to_rad(90) # Convierte 90 grados a radianes

func react() -> void:
	var tween = create_tween()

	if not esta_abierta:
		# Rota a 90 grados en el eje Y
		tween.tween_property(self, "rotation:y", rotation.y + angulo_apertura, 0.5)
		esta_abierta = true
	else:
		# Vuelve a la posición original
		tween.tween_property(self, "rotation:y", rotation.y - angulo_apertura, 0.5)
		esta_abierta = false
