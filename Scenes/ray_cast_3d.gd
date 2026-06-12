extends RayCast3D

var objeto_observado: Node

func _process(_delta: float) -> void:
	objeto_observado = get_collider()
	
	if objeto_observado != null:
		# Verificamos polimórficamente si el objeto es un tipo de interactuable
		if objeto_observado is ObjetoInteractuable && Input.is_action_just_pressed("Interact"):
			# Polimorfismo: el jugador solo da la orden, el objeto la ejecuta
			objeto_observado.react()
