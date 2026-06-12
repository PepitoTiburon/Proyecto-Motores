extends RayCast3D
signal hasSidoInteractuado
var ObjetoObservado:Node
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	ObjetoObservado = get_collider()
	if ObjetoObservado != null:
		if ObjetoObservado.is_in_group("interactuable") && Input.is_action_just_pressed("Interact"):
			hasSidoInteractuado.emit(ObjetoObservado)
