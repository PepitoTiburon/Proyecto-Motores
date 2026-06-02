extends RayCast3D
signal hasSidoInteractuado
signal hasSidoInteractuado2
var ObjetoObservado:Node
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	ObjetoObservado = get_collider()
	if ObjetoObservado != null:
		if ObjetoObservado.is_in_group("interactuable") && Input.is_action_just_pressed("Interact"):
			print("has interactuado con un objeto interactuable")
			if ObjetoObservado == $"../../../../TestObjetoInteractuable2":
				emit_signal("hasSidoInteractuado2")
			if ObjetoObservado == $"../../../../StaticBody3D":
				emit_signal("hasSidoInteractuado")
